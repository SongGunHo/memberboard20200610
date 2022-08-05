<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-06-10
  Time: 오전 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.min.css">
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <style>
        h2 {
            margin: 50px 0;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container col-3">
    <h2>회원가입</h2>
    <div>
    <form action="/save" method="post" name="saveForm">
        <input class="form-control" type="text" id="memberId" name="memberId" placeholder="아이디"><br>
        <input class="form-control" type="text" name="memberPassword" id="memberPassword" placeholder="비밀번호" onblur="pwCheck()"><br>
        <span id="r"></span>
        <input class="form-control" type="text" name="memberName" placeholder="이름"><br>
        <input class="form-control" type="text" name="memberEmail" placeholder="이메일 "><br>
        <input class="form-control" type="text" name="memberMobil" placeholder="전화번호"><br>
        <button class="btn btn-outline-primary d-grid mx-auto" type="button" onclick="aa()">회원가입</button>
    </form>
    </div>
</div>
</body>
    <script>
        const aa =()=>{
            const  memberId= document.getElementById("memberId").value;
            const checkResult= document.getElementById("dup-check-result");
            $.ajax({
                type: "post", // http request method
                url: "/duplicate-check", // 요청 주소 (컨트롤러 주소값)
                data:{"memberId": memberId} , // "memberId"전송하는 파라미터
                dateType: "text", // 리턴 받은 데이터 형식
                success: function (result){
                    if(result=="ok"){
                        alert("성공")
                        saveForm.submit();
                    }else {
                        alert("실패")
                    }
                },
                error: function (){
                    alert("아이디가 있습니다")
                }
            });
        }
    </script>
    <script>
        const pwCheck = () =>{
            const pass = document.getElementById("memberPassword").value;
            const exp = /^(?=.*[a-z])(?=.*\d)(?=.*[-_!#$~`@%^&*()=+|/?.,><])[a-z\d-_!#$~`@%^&*()=+|/?.,><]{8,16}$/;
            const r = document.getElementById("r");
        if(pass.match(exp)){
            alert("특수문자")
        }else {
            r.innerHTML = "정규식";
        }
        }
    </script>
</html>
