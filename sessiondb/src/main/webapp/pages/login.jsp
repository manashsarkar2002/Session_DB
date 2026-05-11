<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins', sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#0f172a,#1e3a8a,#2563eb,#06b6d4);
    background-size:400% 400%;
    animation:bgAnimation 12s ease infinite;
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
    width:300px;
    height:300px;
    background:#7c3aed;
    top:-80px;
    left:-80px;
    opacity:0.5;
}

body::after{
    width:350px;
    height:350px;
    background:#06b6d4;
    bottom:-100px;
    right:-100px;
    opacity:0.5;
}

/* Glass Container */
.container{
    width:380px;
    padding:40px 35px;
    border-radius:25px;

    background:rgba(255,255,255,0.12);
    backdrop-filter:blur(18px);
    -webkit-backdrop-filter:blur(18px);

    border:1px solid rgba(255,255,255,0.2);

    box-shadow:
        0 8px 32px rgba(0,0,0,0.35),
        inset 0 0 15px rgba(255,255,255,0.08);

    text-align:center;

    transition:0.4s ease;
}

.container:hover{
    transform:translateY(-6px) scale(1.01);
}

/* Heading */
.container h1{
    margin-bottom:25px;
    color:white;
    font-size:36px;
    font-weight:600;
    letter-spacing:1px;
    text-shadow:0 4px 15px rgba(0,0,0,0.35);
}

/* Input Fields */
input{
    width:100%;
    padding:14px;
    margin:12px 0;

    border:none;
    outline:none;
    border-radius:14px;

    background:rgba(255,255,255,0.18);

    color:white;
    font-size:15px;

    backdrop-filter:blur(10px);

    box-shadow:
        inset 0 0 10px rgba(255,255,255,0.08),
        0 4px 12px rgba(0,0,0,0.18);

    transition:0.3s ease;
}

/* Placeholder Color */
input::placeholder{
    color:rgba(255,255,255,0.75);
}

/* Input Focus */
input:focus{
    background:rgba(255,255,255,0.24);
    transform:scale(1.02);
    box-shadow:
        0 0 15px rgba(6,182,212,0.5);
}

/* Button */
button{
    width:100%;
    padding:14px;
    margin-top:15px;

    border:none;
    border-radius:14px;

    background:linear-gradient(
        135deg,
        rgba(255,255,255,0.25),
        rgba(255,255,255,0.08)
    );

    color:white;
    font-size:16px;
    font-weight:500;

    cursor:pointer;

    backdrop-filter:blur(10px);

    box-shadow:0 4px 15px rgba(0,0,0,0.25);

    transition:all 0.3s ease;
}

/* Button Hover */
button:hover{
    transform:scale(1.05);

    background:linear-gradient(
        135deg,
        #8b5cf6,
        #06b6d4
    );

    box-shadow:
        0 6px 22px rgba(6,182,212,0.45);
}

/* Button Click */
button:active{
    transform:scale(0.98);
}

/* Link Section */
.link{
    margin-top:18px;
    font-size:14px;
    color:white;
}

.link a{
    color:#ffffff;
    text-decoration:none;
    font-weight:600;
    transition:0.3s;
}

.link a:hover{
    text-shadow:0 0 10px white;
}

.forms{
    display:flex;
    gap:20px;
    flex-wrap:wrap;
    justify-content:center;
}

</style>

</head>
<body>

<div class="login">

    <div class="container">

        <h1>Login</h1>

        <form action="login" method="post">

            <input type="text" name="userid" placeholder="Enter User ID" required>

            <input type="password" name="password" placeholder="Enter Password" required>

            <button type="submit">Login</button>

        </form>

    </div>

</div>

</body>
</html>