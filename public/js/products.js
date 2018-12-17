//将products.js引入html中则显示页面,
$(function(){//dom加载后执行
  if(location.search.indexOf("keyword=")!=-1){
    var keyword=decodeURI(
      location.search.split("=")[1]
    );
    var pno=0;//假设页面是第一页
    function loadPage(no=0){//no:新页号
      pno=no;
      $.ajax({
        url:"http://localhost:3000/products",
        type:"get",
        data:{keyword,pno},
        dataType:"json",
        success:function(output){
          //console.log(output);//请求地址:http://localhost:3000/products.html?keyword=macbook
         var { products,pageCount }=output;
         //console.log(pageCount);
          //把数据输出到页面显示,生成页面
          var html="";
          for(var p of products){
            var {lid,title,price,md}=p;
            html+=
          `<li class="product_item j_product current">
            <div class="p_img clearfix">
              <a href="product_details.html?lid=${lid}" target="_blank">
                <img src="${md}" width="290" height="290" class="j_product_img">
              </a>
            </div>
            <div class="p_info clearfix">
              <div class="p_name">
                <a href="http://www.yiguo.com/product/1349917.html" target="_blank">
                  <font >${title}</font>
              </div>
              <div class="p_price">
                <span class="price">
                  <strong>¥${price.toFixed(2)}</strong>
                </span>
              </div>
            </div>
            <div class="p-buy">
              <span></span>
              <a class="btn-buy"  data-lid="${lid}">加入购物车</a>
            </div>
          </li>`;
          }
          $plist.html(html);
         // console.log($ul);

          //分页
          var html="";
          for(var i=1;i<=pageCount;i++){
            //复制HTML中48行到此，并注释48行
            html+=`<li><a href="#" class="${i==pno+1?'active':''}">${i}</a></li>`//按钮
          }
          // //删除中间li:
          $ul.children(":not(:first-child):not(:last-child)").remove()
          // //将html追加到上一页后
           $ul.children().first().after(html);
          if(pno==0){//如果当前页是第一页就禁用上一页
            $ul.children().first().addClass("disabled")
          }else{//否则就启用上一页
            $ul.children().first().removeClass("disabled")
          }
          if(pno==pageCount-1){
            $ul.children().last().addClass("disabled")
          }else{
            $ul.children().last().removeClass("disabled")
          }
        }
      })

  




    }
    loadPage();
    //$.ajax({...})
   

    //只在页面首次加载时，在分页按钮的父元素上绑定一次
    var $plist=$("div.goods_list>ul");
    var $ul=$plist.parent().next().children("ul");
    $ul.on("click","a",function(e){//ul和$.ajax无关可以拿出来
      e.preventDefault();
      var $a=$(this);
      //除了禁用和当前正在激活按钮之外才能点击
      if(!$a.parent().is(".disabled,.active")){
        if($a.parent().is(":first-child"))//上一页
          var no=pno-1;//新页号=当前页号-1
        else if($a.parent().is(":last-child"))
          var no=pno+1;//新页号=当前页号+1
        else//1、2、3按钮
          var no=$a.html()-1;//新页号=按钮内容-1
          //alert(no);
        loadPage(no);//重新加载新页号的页面内容,重新发请求$.ajax
        loadPagePrice(no);
      }
    });

    //localhost:3000/products.html?kwords=i5
    //34行,href="cart.html"->href="#"
    var j=0;
    $plist.on("click","a.btn-buy",function(e){
      e.preventDefault();
      //获得目标元素保存在变量$btn中
      j++;
     // console.log(j);
      var $btn=$(this);
       //加入购物车                              
        (async function(){
          var res=await $.ajax({
            url:"http://localhost:3000/users/islogin",
            type:"get",
            dataType:"json"
          });
          if(res.ok==1){
            var lid=$btn.attr("data-lid");
            var count=j;
            await $.ajax({
              url:"http://localhost:3000/carts/add",
              type:"get",
              data:{lid,count}
            })
            alert("添加成功！");
          }else{
            alert("请先登录!");
            window.location=href="login.html";
          } 
        })()
      
    });
    
    //购物车加减号
    async function loadCart(){
      var res=await $.ajax({
        url:"http://localhost:3000/users/islogin",
        type:"get",
        dataType:"json"
      });
      if(res.ok==0)
        alert("暂未登录，无法使用购物车");//点注销,如果还在商品列表页面时弹出窗口
      else{
        var res=await $.ajax({
          url:"http://localhost:3000/carts/items",
          type:"get",
          dataType:"json"
        })
      // console.log(res);
        var html="",total=0,html1="";
        for(var item of res){
          var {iid,title,count,price,md,lid}=item;
          total+=price*count;
          //加减缓存在iid上//localhost:3000/products.html?kwords=i5观察页面效果
          html+=`
        <li>
              <div class="l">
                  <a href="product_details.html?lid=${lid}" target="_blank">
                  <img src="${md}" width="42" height="42"></a>
              </div>
              <div class="c"><a href="product_details.html?lid=${lid}">${title}</a>
              </div>
              <div class="r">
                  <b>¥${price}</b> * ${count}
                  <a href="#" >删除</a>
              </div>
         </li>`;
         html1+=`
            <div>
                <span class="totleNum">共<b>${count}</b>件商品</span>
                <span>共计<b class="totlePrice">¥0.00</b></span>
            </div>
            <div><a href="cart.html?iid=${iid}" tppabs="http://cart.yiguo.com/" class="settleup">去购物车</a></div>
          `;
        }
        var $ulCart=$("div.goods>ul");
        $ulCart.children(":gt(0):not(:last)")
               .remove();
        var $priceTotal=$("div.price-total");
        $ulCart.html(html);
        $priceTotal.html(html1);
        $priceTotal.children().find("span>b.totlePrice")
              .html(`¥${total.toFixed(2)}`)//总价

          var $btnDrop=$("div.r>a");
              $btnDrop.on("click",function(e){
                e.preventDefault();
                var $btn=$(this);
                (async function(){
                  await $.ajax({
                    url:"http://localhost:3000/carts/update",
                    type:"get",
                    data:{iid}
                  })
                  loadCart()//又重新请求carts/item
                })()
              })
      }
    }
    loadCart()//页面先加载

    function loadPagePrice(no=0){//no:新页号
      pno=no;
      $.ajax({
        url:"http://localhost:3000/products/price",
        type:"get",
        data:{keyword,pno},
        dataType:"json",
        success:function(output){
        console.log(output);//请求地址:http://localhost:3000/products.html?keyword=macbook
         var { products,pageCount }=output;
         //console.log(pageCount);
          //把数据输出到页面显示,生成页面
          var html="";
          for(var p of products){
            var {lid,title,price,md}=p;
            html+=
          `<li class="product_item j_product current">
            <div class="p_img clearfix">
              <a href="product_details.html?lid=${lid}" target="_blank">
                <img src="${md}" width="290" height="290" class="j_product_img">
              </a>
            </div>
            <div class="p_info clearfix">
              <div class="p_name">
                <a href="http://www.yiguo.com/product/1349917.html" target="_blank">
                  <font >${title}</font>
              </div>
              <div class="p_price">
                <span class="price">
                  <strong>¥${price.toFixed(2)}</strong>
                </span>
              </div>
            </div>
            <div class="p-buy">
              <span></span>
              <a class="btn-buy"  data-lid="${lid}">加入购物车</a>
            </div>
          </li>`;
          }
          $plist.html(html);
         // console.log($ul);

          //分页
          var html="";
          for(var i=1;i<=pageCount;i++){
            //复制HTML中48行到此，并注释48行
            html+=`<li><a href="#" class="${i==pno+1?'active':''}">${i}</a></li>`//按钮
          }
          // //删除中间li:
          $ul.children(":not(:first-child):not(:last-child)").remove()
          // //将html追加到上一页后
           $ul.children().first().after(html);
          if(pno==0){//如果当前页是第一页就禁用上一页
            $ul.children().first().addClass("disabled")
          }else{//否则就启用上一页
            $ul.children().first().removeClass("disabled")
          }
          if(pno==pageCount-1){
            $ul.children().last().addClass("disabled")
          }else{
            $ul.children().last().removeClass("disabled")
          }
        }
      })

    }
     //排序
     var $seq=$("div.filter_sort");
     $seq.on("click","a",function(e){//ul和$.ajax无关可以拿出来
       e.preventDefault();
       var $a=$(this);
       //除了禁用和当前正在激活按钮之外才能点击
       if($a.is(".price")){
         loadPagePrice();//重新加载新页号的页面内容,重新发请求$.ajax
       }
     });

  }
})