<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />

<meta name="viewport"
	content="width=device-width, initial-scale=1, viewport-fit=cover" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>FOR THE URTH</title>
<!-- CSS files -->
<link href="${cpath}/css/tabler.css" rel="stylesheet" />
<link href="${cpath}/css/tabler-vendors.css" rel="stylesheet" />

<!-- Libs JS -->

<!-- Tabler Core -->
<script src="${cpath}/js/tabler.min.js" defer></script>

<!-- my -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${cpath}/css/my/sub.css">
<link rel="stylesheet" href="${cpath}/css/my/kakao.css">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	viewport-fit=cover" >
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<link rel="shortcut icon" href="/img/favi/favicon.ico">
<link rel="apple-touch-icon" sizes="57x57" href="${cpath }/img/fav/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="${cpath }/img/fav/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="${cpath }/img/fav/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="${cpath }/img/fav/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="${cpath }/img/fav/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="${cpath }/img/fav/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="${cpath }/img/fav/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="${cpath }/img/fav/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="${cpath }/img/fav/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="${cpath }/img/fav/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="${cpath }/img/fav/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="${cpath }/img/fav/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="${cpath }/img/fav/favicon-16x16.png">
<link rel="manifest" href="${cpath }/img/fav/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="${cpath }/img/fav//ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<script type="text/javascript">
//??????????????? ???????????? ??????
function fn_submit(){
	var f = document.frm;
		
	if(f.login_id.value==""){
		alert("???????????? ??????????????????");
		f.login_id.focus();
		return false;
	}
		
	if(f.u_pw.value==""){
		alert("????????? ??????????????????.");
		f.u_pw.focus();
		return false;				
	}
	
	f.submit();
}

</script>
</head>
<body>
<c:if test="${!empty alt}">
<%

    out.println("<script>");

    out.println("alert('???????????? ??????????????? ???????????????');");

    out.println("</script>");

 %> 
</c:if>
	<div class="page">
		<div class="page-main">
			<!-- WEB-INF???????????? ????????? page="../header/header.jsp"??? ?????? -->
			<jsp:include page="../../header/header.jsp" />
			<!-- ???????????? header -->
			<div class="cover-wrap">
				<div class="container">
					<div class="cover">?????????</div>
				</div>
			</div>
			<!------------???????????? ??????----------->
			<div class="container">
				<div class="page page-login">
					<div class="container-tight pb-3">
						<div class="text-center mb-4">
							<a href="." class="navbar-brand navbar-brand-autodark"><img
								src="./static/logo.svg" height="36" alt=""></a>
						</div>
						<form class="card card-md" action="${cpath}/login.do" method="post"
							autocomplete="off" name="frm">
							<div class="card-body">
								<h2 class="card-title text-center mb-4">?????????</h2>
								<div class="mb-3">
									<label class="form-label">ID</label> <input type="text"
										class="form-control" id="login_id" name="login_id" placeholder="Enter ID" autocomplete="off">
								</div>
								<div class="mb-2">
									<label class="form-label"> Password </label>
									<div class="input-group input-group-flat">
										<input type="password" class="form-control"
											placeholder="Password" id="u_pw" name="u_pw" autocomplete="off"> 
									</div>
								</div>

								<div class="form-footer">
									<button type="submit" class="btn btn-primary w-100" onclick="fn_submit();return false;">?????????</button>
								</div>
								<div class="hr-text">or</div>
								<div class="row">
									<div class="col">
										<a href="#" id="kakao-login-btn" class="btn login-kakao btn-white w-100 "> <!-- Download SVG icon from http://tabler-icons.io/i/brand-twitter -->
											<!-- <svg xmlns="../dist/img\my/Kakao_logo" class="icon text-yellow" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M22 4.01c-1 .49 -1.98 .689 -3 .99c-1.121 -1.265 -2.783 -1.335 -4.38 -.737s-2.643 2.06 -2.62 3.737v1c-3.245 .083 -6.135 -1.395 -8 -4c0 0 -4.182 7.433 4 11c-1.872 1.247 -3.739 2.088 -6 2c3.308 1.803 6.913 2.423 10.034 1.517c3.58 -1.04 6.522 -3.723 7.651 -7.742a13.84 13.84 0 0 0 .497 -3.753c-.002 -.249 1.51 -2.772 1.818 -4.013z" /></svg>-->
											<i class="xi-kakaotalk login-kakao-icon" ></i>&nbsp;?????????????????? ?????????
										</a>
									</div>
								</div>
							</div>
					</div>
					</form>
					<div class="text-center text-muted mt-3">
						?????? FOR THE URTH??? ????????? ???????????????? <a href="${cpath}/joinForm.do" tabindex="-1">????????????</a>
					</div>
				</div>
			</div>
			<!-- footer -->
			<!-- WEB-INF???????????? ????????? page="../footer/footer.jsp"??? ?????? -->
			<jsp:include page="../../footer/footer.jsp" />
		</div>
	</div>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type='text/javascript'>
Kakao.init('281c02fa614e4ca369f032f5a1b0b714');


$("#kakao-login-btn").on("click", function(){
    //1. ????????? ??????
    Kakao.Auth.login({
        success: function(authObj) {
         
          //2. ????????? ?????????, API ??????
          Kakao.API.request({
            url: '/v2/user/me',
            data: {
                property_keys: ["kakao_account.email","kakao_account.profile.nickname"]
            },
            success: function(res) {
              var id = res.id;
			  scope : 'profile_nickname, account_email';
			  alert('???????????????');
            	
			
			  var param = {
				  user_name : res.kakao_account.profile.nickname,
				  email : res.kakao_account.email,
				  login_id : id, 
				  u_nick : res.kakao_account.profile.nickname
    			}
			  
			  
            	$.ajax({
            		url:'${cpath}/kakaoLogin.do',
            		type: 'post',
            		data: param,
            		success: function(da){
            			 location.href="${cpath}/kakaoLoginS.do";
            		}
            	})
            	            	
            	
            	
             /*  console.log(res);
			
              location.href="${cpath}/kakaoLogin.do?userName="+res.kakao_account.profile.nickname+"&email="+res.kakao_account.email+"&user_id="+id;   */
		              
        }
          })
          console.log(authObj);
          var token = authObj.access_token;
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
        
}) //


</script>	
</body>
</html>