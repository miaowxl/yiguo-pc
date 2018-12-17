/**
 * 购物车
 */
const express=require("express")
const router=express.Router()
const pool=require("../pool")

//测试地址(先把users.js中signup改为get):/users/signin?uname=dingding&upwd=123456
///carts/add?lid=6&count=5
router.get("/add",(req,res)=>{
    var lid=req.query.lid;
    var count=req.query.count;
    var uid=req.session.uid;
    pool.query(
        "select * from yg_shoppingcart_item where user_id=? and product_id=?",
        [uid,lid],
        (err,result)=>{
          if(err) console.log(err);
          if(result.length==0){
            pool.query(
              "insert into yg_shoppingcart_item values(null,?,?,?,0)",
              [uid,lid,count],
              (err,result)=>{
                if(err) console.log(err);
                res.end();
              }
            )
          }else{
            pool.query(
              "update yg_shoppingcart_item set count=? where user_id=? and product_id=?",
              [count,uid,lid],
              (err,result)=>{
                if(err) console.log(err);
                res.end();
              }
            )
          }


        }
    )
})

//http://localhost:3000/users/signin?uname=2we&upwd=123456
//http://localhost:3000/users/islogin
//http://localhost:3000/carts/items
//测试时user.js改为get请求
router.get("/items",(req,res)=>{
    var uid=req.session.uid;
    var sql=`
    SELECT *,(
        SELECT md FROM yg_goods_pic
        WHERE goods_id=product_id
        LIMIT 1
    )as md
    FROM yg_shoppingcart_item
    INNER JOIN yg_goods ON product_id=lid
    WHERE user_id=?
    `;
    pool.query(sql,[uid],(err,result)=>{
        if(err) console.log(err);
        res.writeHead(200);
        res.write(JSON.stringify(result));
        res.end();
    })
})
//加减号
//http://localhost:3000/users/signin?uname=2we&upwd=123456
//http://localhost:3000/carts/update?lid=35&count=新数量
router.get("/update",(req,res)=>{
    var iid=req.query.iid;
    var sql="delete from yg_shoppingcart_item where iid=?";
    var data=[iid];
    pool.query(sql,data,(err,result)=>{
            if(err) console.log(err);
            console.log("删除成功!")
            res.end();
        }
    )
})
module.exports=router;