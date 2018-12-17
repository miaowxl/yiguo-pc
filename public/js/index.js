$(function(){//jQuery中代替window.onload
  $.ajax({
    url:"http://localhost:3000/index/getIndexProducts",
    type:"get",
    dataType:"json",//ajax可自动将json转为obj
    //jquery版本1.11.3用法不用.then,then当中function直接加入success中
    success:function(res){
      //console.log(res.slice(0,6));

      var html="";
      for(var p of res.slice(0,6)){
        var {lid,pic,href,width,height}=p;
        html+=`<li>
        <a href="${href}" target="_blank">
            <img src="${pic}" width="${width}" height="${height}">
        </a>
        </li>`;
      }
      //var divCard=document.querySelector("div#t01_channelhome>div:nth-child(2)>div.floor-main>ul");
      var html=$(html);
      html.eq(2).attr("class","wide");
      html.eq(3).attr("class","wide");
      $("div#t01_channelhome>div:nth-child(2)>div.floor-main>ul").html(html);

      var html="";
      for(var p of res.slice(6,12)){
        var {lid,pic,href,width,height}=p;
        html+=`<li>
        <a href="${href}" target="_blank">
            <img src="${pic}" width="${width}" height="${height}">
        </a>
        </li>`;
      }
      //var divCard=document.querySelector("div#t02_channelhome>div:nth-child(2)>div.floor-main>ul");
      var html=$(html);
      html.eq(2).attr("class","wide");
      html.eq(3).attr("class","wide");
      $("div#t02_channelhome>div:nth-child(2)>div.floor-main>ul").html(html);
      //console.log(divCard.innerHTML);

      var html="";
      for(var p of res.slice(12,18)){
        var {lid,pic,href,width,height}=p;
        html+=`<li>
        <a href="${href}" target="_blank">
            <img src="${pic}" width="${width}" height="${height}">
        </a>
        </li>`;
      }
      //var divCard=document.querySelector("div#t04_channelhome>div:nth-child(2)>div.floor-main>ul");
      var html=$(html);
      html.eq(2).attr("class","wide");
      html.eq(3).attr("class","wide");
      $("div#t04_channelhome>div:nth-child(2)>div.floor-main>ul").html(html);

      var html="";
      for(var p of res.slice(18,19)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t05_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(1)").html(html);

      var html="";
      for(var p of res.slice(19,23)){
        var {lid,pic,href,width,height}=p;
        html+=`<li class="narrow">
        <a href="${href}" target="_blank">
            <img src="${pic}" width="${width}" height="${height}">
        </a>
    </li>`;
      }
      var html=$(html);
      $("div#t05_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(2)>ul").html(html);

      var html="";
      for(var p of res.slice(23,24)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t05_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(3)").html(html);

      var html="";
      for(var p of res.slice(24,29)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t05_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(4)").html(html);



      var html="";
      for(var p of res.slice(29,30)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t06_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(1)").html(html);

      var html="";
      for(var p of res.slice(30,34)){
        var {lid,pic,href,width,height}=p;
        html+=`<li class="narrow">
        <a href="${href}" target="_blank">
            <img src="${pic}" width="${width}" height="${height}">
        </a>
    </li>`;
      }
      var html=$(html);
      $("div#t06_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(2)>ul").html(html);

      var html="";
      for(var p of res.slice(34,35)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t06_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(3)").html(html);

      var html="";
      for(var p of res.slice(35,38)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t06_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(4)").html(html);


      var html="";
      for(var p of res.slice(38,39)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t07_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(1)").html(html);
      
      var html="";
      for(var p of res.slice(39,41)){
        var {lid,pic,href,width,height}=p;
        html+=`<li class="wide">
        <a href="${href}" target="_blank">
            <img src="${pic}" width="${width}" height="${height}">
        </a>
    </li>`;
      }
      var html=$(html);
      $("div#t07_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(2)>ul").html(html);

      var html="";
      for(var p of res.slice(41,42)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t07_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(3)").html(html);

      var html="";
      for(var p of res.slice(42,44)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t07_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(4)").html(html);



      var html="";
      for(var p of res.slice(44,45)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t08_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(1)").html(html);

      var html="";
      for(var p of res.slice(45,49)){
        var {lid,pic,href,width,height}=p;
        html+=`<li class="narrow">
        <a href="${href}" target="_blank">
            <img src="${pic}" width="${width}" height="${height}">
        </a>
    </li>`;
      }
      var html=$(html);
      $("div#t08_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(2)>ul").html(html);

      var html="";
      for(var p of res.slice(49,50)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t08_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(3)").html(html);

      var html="";
      for(var p of res.slice(50,52)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t08_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(4)").html(html);


      var html="";
      for(var p of res.slice(52,53)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t09_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(1)").html(html);
      
      var html="";
      for(var p of res.slice(53,55)){
        var {lid,pic,href,width,height}=p;
        html+=`<li class="wide">
        <a href="${href}" target="_blank">
            <img src="${pic}" width="${width}" height="${height}">
        </a>
    </li>`;
      }
      var html=$(html);
      $("div#t09_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(2)>ul").html(html);

      var html="";
      for(var p of res.slice(55,56)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t09_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(3)").html(html);

      var html="";
      for(var p of res.slice(56,58)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t09_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(4)").html(html);



      var html="";
      for(var p of res.slice(58,59)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t10_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(1)").html(html);

      var html="";
      for(var p of res.slice(59,63)){
        var {lid,pic,href,width,height}=p;
        html+=`<li class="narrow">
        <a href="${href}" target="_blank">
            <img src="${pic}" width="${width}" height="${height}">
        </a>
    </li>`;
      }
      var html=$(html);
      $("div#t10_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(2)>ul").html(html);

      var html="";
      for(var p of res.slice(63,64)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t10_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(3)").html(html);

      var html="";
      for(var p of res.slice(64,68)){
        var {lid,pic,href,width,height}=p;
        html+=`<a href="${href}" target="_blank">
        <img src="${pic}" width="${width}" height="${height}">
    </a>`;
      }
      var html=$(html);
      $("div#t10_channelhome>div:nth-child(2)>div.floor-main>div:nth-child(4)").html(html);
    }
  })
})

// 轮播
// $(function(){
//   $.ajax({
//     url:"http://localhost:3000/index/getIndexCarousel",
//     type:"get",
//     dataType:"json",
//     success:function(res){
//       //console.log(res);

//       var html="";
//       for(var p of res.slice(0,7)){
//         var {cid,img,href}=p;
//         html+=`<li style="background: rgb(239, 239, 239); position: absolute; width: 1552px; left: 0px; top: 0px; "  >
//                         <a href="${href}" target="_blank">
//                             <div class="slider-wrap">
//                                 <span class="banner-text">
//                                     <img height="500">
//                                 </span>
//                             </div>
//                             <div class="banner-main" style="background:url(${img})"></div>
//                         </a>
//                 </li>`;
//       }
//       var divCard=document.querySelector(
//         "div.banner-slider>ul"
//       );
//       divCard.innerHTML=html;
//     }
//   })
// })




