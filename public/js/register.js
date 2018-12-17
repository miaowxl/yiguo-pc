$(function(){
    $("p>a#btnLogin").click(function(){
        var canvas=$("input#verficode_tab1").val();
        var uname=$("input#Phone_Mobile").val();
        (async function(){//login.html
           var res=await $.ajax({
                url:"http://localhost:3000/users/register",
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

