const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.get("/",(req,res)=>{
  var lid=req.query.lid;
  console.log(lid);//5
  var output={product:{},pics:[]};
  //用lid查当前商品信息
  //SELECT *,( SELECT md from yg_goods_pic where goods_id=lid limit 1 ) as md FROM yg_goods 
  var sql1="SELECT * FROM yg_goods where lid=?";
  var sql2="SELECT * FROM yg_goods_pic where goods_id=?";//用lid查当前商品图片列表
  Promise.all([
    new Promise(function(open){
      pool.query(sql1,[lid],(err,result)=>{
        if(err) console.log(err);
        output.product=result[0];
        open();
        console.log("查询product完成!");
      })
    }),
    new Promise(function(open){
      pool.query(sql2,[lid],(err,result)=>{
        if(err) console.log(err);
        output.pics=result;
        open()
        console.log("查询pics完成");
      })
    })
  ]).then(function(){
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(output));
    res.end();
    console.log("响应完成!");
  })
})

module.exports=router;