<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <title>图片切换</title>
     <style type="text/css">
     	*{
     		padding: 0;
     		margin: 0;
     	}
         .tab{
             width: 100%;
             height: 250px;
             margin: 0 auto;
             background-color: #ccc;
      		
         }
         img{
             width: 100%;
             height: 250px;
         }
     </style>
 </head>
 <body>
     <div class="tab" id="tabe">
         <img src="img/E1.png" id="img" />
     </div>
 </body>
 <script>
     //使用数组保存图片的地址
    var imgs=["img/E2.png","img/E3.jpg","img/E4.jpg"];
     var index=0;
     function qiehuan(){
         document.getElementById("img").src=imgs[index];
         index++;
         if(index>=2){
             index=0;
         }
     }
     setInterval("qiehuan()",3000);
 </script>
 </html>