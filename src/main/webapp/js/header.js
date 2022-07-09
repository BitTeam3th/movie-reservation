let headerContent = ``;
headerContent += `
    <div class="inner">
        <a href="index.jsp"><img src="img/logo.png" style="position:absolute; margin-top:2%; margin-left:43%; width:10%; height:70%"></a>
        <h1><a href="index.jsp">BIT CINEMA</a></h1>

        <ul id="gnb">
            <li><a href="index.jsp">MOVIE</a></li>
            <li><a href="member.jsp">Member</a></li>
        </ul>

        <ul class="util">
            <li><a href="login.jsp">Login</a></li>
            <li><a href="join.jsp">Join</a></li>
            <li><a href="#">My Page</a></li>
        </ul>
    </div>
`;
document.getElementById('header').innerHTML = headerContent;