let headerContent = ``;
headerContent += `
    <div class="inner">
        <a href="index.jsp"><img src="`+getContextPath() +`/img/logo.png" style="position:absolute; margin-top:2%; margin-left:43%; width:10%; height:70%"></a>
        <h1><a href="index.jsp">BIT CINEMA</a></h1>

        <ul id="gnb">
            <li><a href="./app?param=main">MOVIE</a></li>
            <li><a href="./app?param=member">Member</a></li>
        </ul>

        <ul class="util">
            <li><a href="./app?param=login">Login</a></li>
            <li><a href="./app?param=regi">Join</a></li>
            <li><a href="./app?param=mypage">My Page</a></li>
        </ul>
    </div>
`;
document.getElementById('header').innerHTML = headerContent;

function getContextPath() {
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}