let headerContent = ``;
headerContent += `
    <div class="inner">
        <h1><a href="./app?param=main">BIT CINEMA</a></h1>

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