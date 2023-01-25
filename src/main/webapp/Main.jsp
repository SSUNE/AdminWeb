<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <!-- 부트스트랩 css 사용 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <!--  부트스트랩 js 사용 -->
    <script type="text/javascript" src="/resource/js/bootstrap.js"></script>

    <!--  부트스트랩 js 사용 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="/resource/js/bootstrap.js"></script>
    <meta name="theme-color" content="#7952b3">


    <style>
        div {
            position: relative;
        }

        #cm {
            position: absolute;
        }

        .hc {
            width: 300px;
            left: 0;
            right: 0;
            margin-left: auto;
            margin-right: auto;
        }

        /* 가로 중앙 정렬 */

        .vc {
            height: 350px;
            top: 0;
            bottom: 0;
            margin-top: auto;
            margin-bottom: auto;
        }

        /* 세로 중앙 정렬 */

        .mt-5 {
            margin-top: 1.5rem !important;
        }

        input#inputId {
            margin: auto;
        }

        input#inputPassword {
            margin: auto;
        }

        button.w-100.btn.btn-lg.btn-primary {
            margin-top: 30px;
        }

        button.w-100.btn.btn-lg.btn-outline-secondary {
            margin-top: 10px;
            font-size: 100%;
        }

        .checkbox.mb-3 {
            margin-top: 10px;
        }

    </style>

</head>
<body>
<div class="hc vc" id="cm">
    <div class="row">
        <div class="col-sm text-center">
            <form>
                <%--                <img class="mb-4" src="img/logo/logo.png" width="200">--%>
                <h1 class="h3 mb-3 fw-normal">sign in</h1>

                <div class="text-center">

                    <!-- ID입력 -->
                    <label for="inputId" class="visually-hidden">Id</label>
                    <input type="text" id="inputId" class="form-control" placeholder="Id"
                           style="width: 300px; height:50px"
                           required autofocus>

                    <!-- PW입력 -->
                    <label for="inputPassword" class="visually-hidden">Password</label>
                    <input type="password" id="inputPassword" class="form-control" placeholder="Password"
                           style="width: 300px; height:50px"
                           required>

                </div>

                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <%--                <input type="submit" name="signin" class="btn btn-lg btn-primary" value="Sign in">--%>
                <%--                <input type="submit" name="signin" class="btn btn-lg btn-success" value="Sign up">--%>
                <button class="w-100 btn btn-lg btn-primary" type="submit" id="signin" name="signin">Sign in</button>
                <button class="w-100 btn btn-lg btn-outline-secondary" type="submit" id="signup" name="signup">Sign up
                </button>


                <!-- 회원가입 성공, 로그인 실패 등 메세지가 있으면 경고창 출력 -->
                <%
                    Object obj = session.getAttribute("loginMsg");
                    if (obj != null) {
                        String msg = (String) obj;
                %>
                <div class="alert alert-danger text-center" role="alert"><%=msg%>
                </div>
                <%
                        // 출력한 메세지는 지워줌
                        session.removeAttribute("loginMsg");
                    }
                %>

                <p class="mt-5 mb-3 text-muted">&copy; 2021 SSUNE SHOP</p>
            </form>
        </div>
    </div>
</div>
</body>
</html>