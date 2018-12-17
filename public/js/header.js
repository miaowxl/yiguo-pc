/*引入header.js则可引入头部。把ajax请求封装起来实现，对header.html请求 */
$(function(){
  //1. 动态创建link引用header.css
  $("<script src='js/base.js'></script>").appendTo("body")
  $("<script src='js/city.js'></script>").appendTo("body")
  $("<link rel='stylesheet' href='css/header.css'>").appendTo("head")
  //2. ajax请求header.html片段
  $.ajax({
    url:"http://localhost:3000/header.html",
    type:"get",
    success:function(res){//兼容旧浏览器
      //引入页头
      $("#header").replaceWith(res)//用res引入头部文件
      //1. 查找触发事件的元素
      var $btnSearch=
            $("div.search>div.search-bar>input.search-btn"),
          $input=
            $btnSearch.prev();
            //console.log($input.val());
      //2. 绑定事件
      $btnSearch.click(function(){
        //  3. 查找要修改的元素
        //  4. 修改元素
        var kw=$input.val().trim();//trim()去除空格
        if(kw!=="")
          location.href=
            `products.html?keyword=${kw}`;//页面跳转
      })

      // //按回车执行跳转
      $input.keyup(function(e){
        if(e.keyCode==13) $btnSearch.click()//模拟触发
      })
      /*kwords放在地址栏中 */
      if(location.search.indexOf("keyword")!=-1){//是否包含kwords关键词
        var kwords=decodeURI(//url标准中不包括空格,解码
          location.search.split("=")[1]
        )
        $input.val(kwords);
      }
      
      //登录跳转
      $("#btnLogin").click(function(){
        location.href="login.html?back="+location.href;
      })

      //console.log($("ul.fr").children().slice(4,6));
      //登录后状态
      $.ajax({
        url:"http://localhost:3000/users/islogin",
        type:"get",
        dataType:"json",
        success:function(res){
          if(res.ok==0){
            $("ul.fr").children().slice(6).show();
          }else{
            $("#_loginname").html(res.uname);
            $("ul.fr").children().slice(6).hide();
            $("ul.fr").children().slice(4,6).show();
          }

        }
      })

      $("#_logout").click(function(){
        $.ajax({
          url:"http://localhost:3000/users/signout",
          type:"get",
          success:function(){
            location.reload();
          }
        })
      })



    }
  })
})