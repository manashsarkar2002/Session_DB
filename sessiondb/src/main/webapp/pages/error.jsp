<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Error Page</title>

<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins', sans-serif;
}

body{
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;

    /* RED GRADIENT BACKGROUND */
    background:linear-gradient(
        135deg,
        #2b0000,
        #7f0000,
        #dc2626,
        #ff0000,
        #ff4d4d
    );

    background-size:400% 400%;
    animation:bgAnimation 10s ease infinite;

    overflow:hidden;
    position:relative;
}

/* Animated Background */
@keyframes bgAnimation{
    0%{
        background-position:0% 50%;
    }
    50%{
        background-position:100% 50%;
    }
    100%{
        background-position:0% 50%;
    }
}

/* Ambient Glow */
body::before,
body::after{
    content:"";
    position:absolute;
    border-radius:50%;
    filter:blur(120px);
    z-index:-1;
}

body::before{
    width:320px;
    height:320px;
    background:#ff0000;
    top:-100px;
    left:-100px;
    opacity:0.5;
}

body::after{
    width:350px;
    height:350px;
    background:#ff4d4d;
    bottom:-120px;
    right:-120px;
    opacity:0.5;
}

/* Glass Error Card */
.error{
    width:420px;
    padding:45px 35px;

    border-radius:28px;

    background:rgba(255,255,255,0.12);

    backdrop-filter:blur(18px);
    -webkit-backdrop-filter:blur(18px);

    border:1px solid rgba(255,255,255,0.2);

    box-shadow:
        0 8px 32px rgba(0,0,0,0.4),
        inset 0 0 15px rgba(255,255,255,0.08);

    text-align:center;

    transition:0.4s ease;
}

.error:hover{
    transform:translateY(-6px) scale(1.02);
}

/* Error Icon */
.error-icon{
    font-size:70px;
    margin-bottom:15px;
    animation:shake 1.5s infinite;
}

/* Shake Animation */
@keyframes shake{
    0%{transform:translateX(0);}
    25%{transform:translateX(-4px);}
    50%{transform:translateX(4px);}
    75%{transform:translateX(-4px);}
    100%{transform:translateX(0);}
}

/* Main Heading */
h1{
    font-size:65px;
    font-weight:700;
    color:#ffffff;

    letter-spacing:2px;

    margin-bottom:10px;

    text-shadow:
        0 0 15px rgba(255,255,255,0.4),
        0 4px 20px rgba(0,0,0,0.4);
}

/* Sub Heading */
h2{
    font-size:28px;
    color:#ffe5e5;
    margin-bottom:15px;
    font-weight:500;
}

/* Message */
p{
    font-size:16px;
    color:#ffffffcc;
    margin-bottom:30px;
    line-height:1.6;
}

/* Responsive */
@media(max-width:500px){

    .error{
        width:90%;
        padding:35px 25px;
    }

    h1{
        font-size:50px;
    }

    h2{
        font-size:22px;
    }

    p{
        font-size:14px;
    }
}

</style>

</head>

<body>

<div class="error">

    <div class="error-icon">⚠️</div>

    <h1>OOPS!</h1>

    <h2>Something went wrong...</h2>

    <p>
        User ID or Password is incorrect.<br>
        Please try again carefully.
    </p>

    <jsp:include page="login.jsp"></jsp:include>

</div>

</body>
</html>