const express=require("express")
const router=express.Router()
const pool=require("../pool")

//测试地址:localhost:3000/users/signin?uname=dingding&upwd=123456
router.post("/signin",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  console.log(uname,upwd);
  pool.query(
    "select * from yg_user where uname=? and upwd=?",
    [uname,upwd],
    (err,result)=>{
      if(err) console.log(err);
      if(result.length>0){
        res.writeHead(200);
        var user=result[0]
        req.session["uid"]=user["uid"]
        console.log(req.session["uid"]);//输出uid
        res.write(JSON.stringify({
          ok:1
        }))
      }else{
        res.write(JSON.stringify({
          ok:0,
          msg:"用户名或密码错误！"
        }))
      }
      res.end();
    }
  )
})
router.get("/islogin",(req,res)=>{
  res.writeHead(200);
  if(req.session.uid===undefined){
    res.write(JSON.stringify({ok:0}))
    res.end();
  }
  else{
    var uid=req.session.uid;
    var sql="select * from yg_user where uid=?"
    pool.query(sql,[uid],(err,result)=>{
      if(err) console.log(err);
      var user=result[0];
      res.write(JSON.stringify({ok:1,uname:user.uname}))
      res.end();
    })
  }
})
router.get("/signout",(req,res)=>{
  res.writeHead(200);
  req.session.uid=undefined;
  res.end();
})

router.post('/register',(req,res)=>{
	var $uname=req.body.uname;
	var $upwd=req.body.upwd;
	var $reupwd=req.body.reupwd;
	var $code=req.body.code;
	var $canvas=req.body.canvas;
	var sql='insert into yg_user values(null,?,?,?,?,?)';
	pool.query(sql,[$canvas,$uname,$code,$upwd,$reupwd],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
      res.send('注册成功,请登录!');
		}else{
			res.send('注册失败');
		}

	});
    
});
//查询两次密码是否一种
router.post('/selectUpwd',(req,res)=>{
	var $upwd=req.body.upwd;
	var $reupwd=req.body.reupwd;
	  if($upwd==$reupwd){
		res.send('2');
	  }else{
		res.send('3');
	  }
 
});
router.get('/selectUser',(req,res)=>{
	var $uname=req.query.uname;
	if(!$uname){
   res.send('用户名不能为空！');
	return;
	}
  var sql="select * from yg_user where uname=?";
  pool.query(sql,[$uname],(err,result)=>{
    if(err) throw err;
	  if(result.length>0){
		res.send('1');
	  }else{
		res.send('0');
	  }
  });
});
//测试：
//http://localhost:3000/users/islogin ok:0
//.../users/signin?uname=2we&upwd=123456 ok:1
//.../users/islogin ok:1
//.../users/signout
//.../users/islogin ok:0

module.exports=router;

