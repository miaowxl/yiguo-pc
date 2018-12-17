$(function(){
    $("p>a#btnLogin").click(function(){
        var uname=$("input#UserName").val();
        var upwd=$("input#Pwd").val();
        (async function(){//login.html
           var res=await $.ajax({
                url:"http://localhost:3000/users/signin",
                type:"post",
                data:{uname,upwd},
                dataType:"json"
            })
            if(res.ok==0)
                alert(res.msg);
            else{
                alert("登陆成功");
                //?back=http://localhost:3000...为search
                if(location.search.startsWith("?back="))
                    var url=location.search.slice(6)
                else
                    var url="index.html";
                location.href=url;
            }
        })()
       

    })
})