const express=require("express")
const router=express.Router()
const pool=require("../pool")

//测试地址: http://localhost:3000/products?keyword=榴莲 密语
router.get("/",(req,res)=>{
           //bodyParser:url.parse(req.url,true)
  var kwords=req.query.keyword;//"macbook i5 128g"
  var arr=kwords.split(" ")//arr[macbook,i5,128g]
  for(var i=0;i<arr.length;i++){//for of改变的是副本 
    arr[i]=`title like '%${arr[i]}%'`
  }//arr[title like '%macbook%', ... ]
  var where=" where "+arr.join(" and ")
  // where title like '%macbook%' and title like '%i5%' and title like '%128g%'
  
  //测试地址: http://localhost:3000/products?keyword=macbook i5 128g&pno=1
  //要回发客户端的支持分页的对象
   var output={ pageSize:8 } //每页8个商品
   output.pno=req.query.pno;
  var sql="SELECT *,( SELECT md from yg_goods_pic where goods_id=lid limit 1 ) as md FROM yg_goods ";
  pool.query(sql+where,[],(err,result)=>{
    if(err) console.log(err);
    //res.send(result);
    output.count=result.length;//获得总记录数
    output.pageCount=Math.ceil(//计算总页数
      output.count/output.pageSize);
    output.products=//截取分页后的结果集
      result.slice(output.pno*8,output.pno*8+8);//代替limit//0 0+9//9 9+9
      //console.log(output)
      // 将结果输出到页面中//测试地址... products?kwords=i5&pno=1
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(output))
    res.end()//测试地址... products?kwords=i5&pno=1
  })
  
});

router.get("/price",(req,res)=>{
    //测试地址: http://localhost:3000/products?keyword=macbook i5 128g&pno=1
    //要回发客户端的支持分页的对象
    var kwords=req.query.keyword;
    var where=` where title like '%${kwords}%' order by price`;
    var output={ pageSize:8 } //每页8个商品
    output.pno=req.query.pno;
    //SELECT *,( SELECT md from yg_goods_pic where goods_id=lid limit 1 ) as md FROM yg_goods where title like '%榴莲%' order by price
    var sql="SELECT *,( SELECT md from yg_goods_pic where goods_id=lid limit 1 ) as md FROM yg_goods";
    pool.query(sql+where,[],(err,result)=>{
        if(err) console.log(err);
        //cres.send(result);
        output.count=result.length;//获得总记录数
        output.pageCount=Math.ceil(//计算总页数
        output.count/output.pageSize);
        output.products=//截取分页后的结果集
        result.slice((output.pno)*8,(output.pno)*8+8);//代替limit//0 0+9//9 9+9
        //console.log(output)
        // 将结果输出到页面中//测试地址... products?kwords=i5&pno=1
        res.writeHead(200,{
        "Content-Type":"application/json;charset=utf-8",
        "Access-Control-Allow-Origin":"*"
        })
        res.write(JSON.stringify(output))
        res.end()//测试地址... products?kwords=i5&pno=1
    })

});

module.exports=router;