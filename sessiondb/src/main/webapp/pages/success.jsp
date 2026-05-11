<%
   String uname=(String)session.getAttribute("uname");
   if(uname==null)
   {
      response.sendRedirect("login.jsp");
   }
%>
   

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Login Successful</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

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

    background:linear-gradient(
        135deg,
        #022c22,
        #065f46,
        #10b981,
        #34d399
    );

    background-size:400% 400%;
    animation:bgAnimation 10s ease infinite;

    overflow:hidden;
    position:relative;
}

/* Animated Gradient */
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
    background:#22c55e;
    top:-100px;
    left:-100px;
    opacity:0.45;
}

body::after{
    width:350px;
    height:350px;
    background:#34d399;
    bottom:-120px;
    right:-120px;
    opacity:0.45;
}

/* Glass Card */
.card{
    width:430px;

    padding:50px 40px;

    border-radius:30px;

    background:rgba(255,255,255,0.12);

    backdrop-filter:blur(18px);
    -webkit-backdrop-filter:blur(18px);

    border:1px solid rgba(255,255,255,0.2);

    box-shadow:
        0 8px 32px rgba(0,0,0,0.35),
        inset 0 0 15px rgba(255,255,255,0.08);

    text-align:center;

    animation:fadeIn 0.8s ease;

    transition:0.4s ease;
}

.card:hover{
    transform:translateY(-8px) scale(1.02);
}

/* Success Image */
.image-container{
    width:130px;
    height:130px;

    margin:0 auto 25px;

    border-radius:50%;

    overflow:hidden;

    display:flex;
    justify-content:center;
    align-items:center;

    background:rgba(255,255,255,0.15);

    backdrop-filter:blur(12px);

    border:1px solid rgba(255,255,255,0.2);

    box-shadow:
        0 0 30px rgba(34,197,94,0.45),
        inset 0 0 15px rgba(255,255,255,0.08);

    animation:pop 0.7s ease;
}

.image-container img{
    width:100%;
    height:100%;
    object-fit:cover;
}

/* Heading */
h1{
    font-size:38px;
    font-weight:600;

    color:white;

    margin-bottom:14px;

    letter-spacing:1px;

    text-shadow:
        0 4px 20px rgba(0,0,0,0.35);
}

/* Message */
p{
    font-size:16px;

    color:rgba(255,255,255,0.9);

    line-height:1.8;

    margin-bottom:30px;
}

/* Logout Button */
a{
    display:inline-block;

    padding:14px 34px;

    border-radius:16px;

    text-decoration:none;

    color:white;

    font-size:15px;
    font-weight:600;

    background:linear-gradient(
        135deg,
        rgba(255,255,255,0.22),
        rgba(255,255,255,0.08)
    );

    backdrop-filter:blur(10px);

    border:1px solid rgba(255,255,255,0.15);

    box-shadow:
        0 4px 15px rgba(0,0,0,0.25);

    transition:all 0.3s ease;
}

/* Hover */
a:hover{
    transform:scale(1.08);

    background:linear-gradient(
        135deg,
        #22c55e,
        #10b981
    );

    box-shadow:
        0 6px 24px rgba(16,185,129,0.45);
}

/* Animations */
@keyframes fadeIn{
    from{
        opacity:0;
        transform:translateY(20px);
    }

    to{
        opacity:1;
        transform:translateY(0);
    }
}

@keyframes pop{
    from{
        transform:scale(0.7);
        opacity:0;
    }

    to{
        transform:scale(1);
        opacity:1;
    }
}

/* Responsive */
@media(max-width:500px){

    .card{
        width:90%;
        padding:40px 28px;
    }

    h1{
        font-size:30px;
    }

    p{
        font-size:14px;
    }

    .image-container{
        width:100px;
        height:100px;
    }
}

</style>

</head>

<body>

<div class="card">

    <div class="image-container">
        <img src="../images/right.jpg" alt="Success">
    </div>

    <h1>Success!</h1>

    <p>
        Welcome back <%=uname %> 🎉<br>
        You have successfully logged into your account.
    </p>

    <a href="logout.jsp">Logout</a>

</div>

</body>
</html>