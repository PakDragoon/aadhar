var express = require('express');
var router = express.Router();
/* GET users listing. */
// const express=require('express');
// const app=express()
var conn=require('../database');

router.get('/form', function(req, res, next) {
  // res.render('voter-registration.ejs');
  if(req.session.loggedinUser){
    res.render('voter-registration.ejs')
  }else{
    res.redirect('/login');
  }
});


var getAge = require('get-age');


var nodemailer = require('nodemailer');
var rand=Math.floor((Math.random() * 10000) + 54);
var transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: 'election.blockchain@gmail.com',
      pass: 'ajkprvy7'
    }
  });

var account_address;
var data;

// app.use(express.static('public'));
// //app.use('/css',express.static(__dirname+'public/css'));
// //app.use(express.json());
// app.use(express.urlencoded());

router.post('/getdata', function(req,res){
  var dob=[];
  const { aadhar_no, account_address } = req.body
  console.log(aadhar_no, account_address)
  let sql = `SELECT * FROM aadhar_info WHERE Aadharno = ${aadhar_no}`;   
  conn.query(sql, data, (error, results, fields) => {
      if (error) {
        return console.error(error.message);
      }
      console.log(results)
      res.render("test", { results });
      // res.status(200).send(results)
  });
})

// router.post('/registerdata',function(req,res){
//     var dob=[];
//     data=req.body.aadharno;
   
//     // document.getElementById('resultdata').innerHTML=data;
//     console.log(adhar)
//     //data stores aadhar no
//     console.log(data);
//     account_address=req.body.account_address;     //stores metamask acc address
//     console.log(account_address);
//     let sql = "SELECT * FROM aadhar_info WHERE Aadharno = ?" ;   
//     conn.query(sql, data, (error, results, fields) => {
//         if (error) {
//           return console.error(error.message);
//         }
//         console.log(results)
//         dob = results[0].Dob;
//         var email=results[0].Email;
//         age = getAge(dob);
//         is_registerd=results[0].Is_registered;
//         if (is_registerd!='YES')
//         {
          
//           // if (age>=18)
//           // {
//           //   var mailOptions = {
//           //       from: 'sharayuingale19@gmail.com',
//           //       to: email,
//           //       subject : "Please confirm your Email account",
//           //       text : "Hello, Your otp is "+rand	
//           //     };
//           //   transporter.sendMail(mailOptions, function(error, info){
//           //       if (error) {
//           //         console.log(error);
//           //       } 
//           //       else {
//           //         console.log('Email sent: ' + info.response);
//           //       }
//           //     });
//           //   
//           // }
//           // else
//           // {
//           //   res.send('You cannot vote as your age is less than 18');
//           // }
//           //res.render('dashboard-route.js');
//           res.render('emailverify.ejs');
//           //console.log("Hello Aunty");
//         }
//         else    //IF USER ALREADY REGISTERED
//         {
//           res.render('voter-registration.ejs',{alertMsg:"You are already registered. You cannot register again"});
//         }
        
//     });

//     //console.log(dob);
//     //console.log(age);
//     //res.send("ok")
//     //console.log(dob);
// })

router.post('/otpverify', (req, res) => {
    var otp = req.body.otp;
    if (otp==786) 
    {
        var record= { Account_address: account_address, Is_registered : 'Yes' };
        var sql="INSERT INTO registered_users SET ?";
        conn.query(sql,record, function(err2,res2)
          {
              if (err2){
             throw err2;
            }
              else{
                var sql1="Update aadhar_info set Is_registered=? Where Aadharno=?";
                var record1=['YES',data]
                console.log(data)
                conn.query(sql1,record1, function(err1,res1)
                {
                   if (err1) {
                    res.render('voter-registration.ejs');
                   }
                   else{
                    console.log("1 record updated");
                    var msg = "You are successfully registered";
                    // res.send('You are successfully registered');
                    res.render('voter-registration.ejs',{alertMsg:msg});                 
                  }
                }); 
               
              }
          }); 
    }
    else 
    {
       res.render('voter-registration.ejs',{alertMsg:"Session Expired! , You have entered wronge OTP "});
    }
})



// router.get('/register',function(req,res){
//     res.sendFile(__dirname+'/views/index.html')
// });

/*app.get('/signin_signup',function(req,res){
    res.sendFile(__dirname+'/views/signup.html')
});

app.get('/signup',function(req,res){
    console.log(req.body);
    res.sendFile(__dirname+'/views/signup.html')
});*/

module.exports = router;