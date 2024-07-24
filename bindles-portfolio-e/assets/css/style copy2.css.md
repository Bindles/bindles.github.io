
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600&display=swap');
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    border: none;
    scroll-behavior: smooth;
    font-family: 'Poppins', sans-serif;
}

:root {
    --bg-color: #000000;
    --second-bg-color: #161616;
    --text-color: #fff;
    --main-color: #9D0B0B;
    /* --main-color: #7b4bb7; */
}

html {
    font-size: 62.5%;
    overflow-x: hidden;
}

body {
    background: var(--bg-color);
    font-family: "Poppins", "sans-serif";
    color: var(--text-color);
}

html::-webkit-scrollbar {
    width: 0.8rew;
}

html::-webkit-scrollbar-track {
    background: var(--main-color);
}

html::-webkit-scrollbar-thumb {
    background: var(--main-color)
}

.header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 3rem 9%;
    background: rgba(0, 0, 0, 0.7);
    filter: drop-shadow(10px);
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 100;
}

.logo {
    font-size: 3rem;
    color: var(--main-color);
    font-weight: 800;
    cursor: pointer;
    transition: 0.5s ease;
}

.logo:hover {
    transform: scale(1.1);
}
.navbar a:hover,
.navar a.active {
    color: var(--main-color);
    border-bottom: 3px solid var(--main-color);
}

#menu-icon {
    font-size: 3.6rem;
    color: var(--main-color);
    display: none;
}

@media (max-width:995px) {
    #menu-icon {
        display: block;
    }

    .navbar {
        position: absolute;
        top: 100x;
        right: 0;
        width: 40%;
        border-left: 3px solid var(--main-color);
        border-bottom: 3px solid var(--main-color);
        border-bottom-left-radius: 2rem;
        scroll-padding: 1rem 3%;
        background-color: var(--second-bg-color);
        border-top: 0.1rem solid rgba(0, 0, 0, 0.1);
        display: none;
    }
}

.navbar.active {
    display: block;
}

.navbar a {
    /* display: block; */
    /* font-size: 2rem; */
    /* margin: 3rem 0; */
    font-size: 1.8rem;
    color: var(--text-color;)
    margin-left: 4rem;
    font-weight: 500;
    transition: 0.3s ease;
    border-bottom: 3px solid transparent;
}

.navbar a:hover,
.navbar a.active {
    /* padding: 1rem; */
    /* border-radius: 0.5rem; */
    /* border-bottom: 0.5rem solid var(--main-color); */
    color: var(--main-color);
    border-bottom: 3px solid var(--main-color);
}

#menu-icon{
    font-size: 3.6rem;
    color: var(--main-color);
    display: none;
}

.section {
    min-height: 100vh;
    padding: 5rem 9% 5rem;
}

.home {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 8rem;
    background: var(--bg-color);
}

.home .home-content h1{
    font-size: 6rem;
    font-weight: 700;
    line-height: 1.3;
}

span {
    color: var(--main-color);
}

.home-content h3 {
    font-size: 4rem;
    margin-bottom: 1rem;
    font-weight: 700;
}

.home-img {
    border-radius: 50%;
}

.home-img img {
    position: relative;
    width: 32vw;
    border-radius: 50%;
    box-shadow: 0 0 25px var(--main-color);
    cursor: pointer;
}

.home-img img:hover {
    transform: scale(1.01);
    filter: drop-shadow( 0 0 25px var(--main-color));
}

.home-content p{
    font-size: 1.8rem;
    font-weight: 500;
}

.social-icons {
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 4em;
    height: 4rem;
    background: transparent;
    border: 0.2rem solid var(--main-color);
    font-size: 2rem;
    border-radius: 50%;
    color: var(--main-color);
    margin: 3rem 1.5rem 3rem 0;
    transition: 0.3s ease;
}

social-icon a:hover {
    color: white;
    transform: scale(1.3)translateY(-5px);
    background: var(--main-color);
    box-shadow: 0 0 25px var(--main-color);
}

.btn {
    display: inline-block;
    padding: 1rem 2.8rem;
    background: var(--bg-color);
    border-radius: 4rem;
    font-size: 1.6rem;
    color: var(--main-color);
    border: 2px solid var(--main-color);
    letter-spacing: 0.1rem;
    font-weight: 600;
    transition: 0.3s ease;
    cursor: pointer;
}

.btn:hover {
    transform: scale(1.03);
    background-color: var(--main-color);
    color: var(--text-color);
    box-shadow:  0 0 25px var(--main-color);
}

.typing-text {
    font-size: 34px;
    font-weight: 600;
    min-width: 280px;
}

.typing-text span {
    position: relative;

}

.typing-text span::before{
    content: 'software developer';
    color: var(--main-color);
    animation: words 20s infinite;

}

.typing-text span::after{
    content: '';
    background: var(--bg-color);
    position: absolute;
    width: calc(100% + 8px);
    height: 100%;
    border-left: 3px solid var(--bg-color) ;
    right: -8;
    animation: cursor 0.6s infinite, typing 20s steps(14) infinite;


}

@keyframes cursor {
    to {
        border-left: 3px solid var(--main-color) ; 
    }
}

@keyframes words{
    0%, 20% {
       content: 'web developer';
    }
    21%, 40% {
        content: 'software developer';
    }
    41%, 60% {
        content: 'web designer';
    }
    61%, 80% {
        content: 'photographer';
    }
    81%, 100% {
        content: 'youtuber';
    }
}

/* @keyframes typing { */
    /* 10%, 15%, */
    /* 30%, 35%, */
    /* 50%, 55%, */
    /* 70%, 75%, */
    /* 90%, 95% { */
        /* width: 0; */
    /* } */
    /* 5%, 20%, */
    /* 25%, 40%, */
    /* 45%, 60%, */
    /* 65%, 80%, 85%{ */
        /* width: calc(100% + 8px); */
    /* } */
/* } */

@media (max-width:1000px) {
    .home {
        gap: 4rem;
    }
}

@media (max-width:995px) {
    .home {
        flex-direction: column ;
        margin: 5rem;
    }
    .home .home-content h3 {
        font-size: 2.5rem;
    }
    .home-content hi {
        font-size: 5rem;
    }
    .home-img img {
        width: 70vw;
        margin-top: 4rem;
    }
}



/* services section */


.services {
    background: var(--second-bg-color);
}

.services-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    align-items: center;
    gap: 2.5rem;

}

.service-box {
    background-color: var(--main-color);
    height: 300px;
    border-radius: 3rem;
    cursor: pointer;
    transition: 0.3s ease;
}

.service-box:hover {
    background: transparent;
    color: var(--text-color);
    transform: scale(1.03);
    border: 1px solid var(--main-color) ;

}

.service-box .service-info {
    display: flex;
    flex-direction: column;
    text-align: left;
    max-height: 200px;
    justify-content: center;
    align-items: baseline;
    padding: 5em;
}

.service-info h4 {
    font-size: 2.5rem;
    font-weight: 500;
    margin-bottom: 1rem;
}


.service-info p{
    font-size: 1.6rem;
    font-weight: 400;
    max-height: 100px;
    margin: auto;
}

@media (max-width:991px) {
    section {
        padding: 10rem 3% 2rem;
    }
    .services{
        padding-bottom: 7rem;
    }
}


    @media (max-width895px) {
    .services h2{
        margin-bottom: 3rem;
    }
    .services-container {
        grid-template-columns: repeat(1,1fr);
    }
}

.skills {
    background: var(--bg-color);
}

.skills .container {
    background: #e1352c54;
    color: var(--text-color);
    border-radius: 1rem;
    padding: 2rem;
    width: 70%;
    margin: auto;
    margin-top: 2rem;
}


.skills .container .row {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    flex-wrap: wrap;
    gap: 1.8rem;
}


.skills .container .bar {
    margin-bottom: 15px;
    padding: 10px;
    border-radius: 1rem;
    background: var(--bg-color);
    transition: 0.3s ease;
    cursor: pointer;

}


.skills .container .bar:hover {
    box-shadow: 0 4px 10px var(--main-color);
    transform: scale(1.03);
}


.skills .container .bar .info {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 1rem;
    margin-top: 1rem;
}


.skills .container .bar .info span {
    font-size: 2rem;
    font-weight: 500;
    margin-left: 0.05rem;
}


@media screen and (max-width:600px) {
    .skills .container{
        margin: 0;
        padding: 0;
    }
    .skills .container .row{
        grid-template-columns: repeat(2, 1fr);
        margin: 1rem;
        padding: 2rem 0.2rem 2rem 0.2rem;
        gap: 1rem;
    }
    .skills .container {
        margin-top: 5px;
        width: 100%;
    }   
}


.education {
    background: var(--second-bg-color);
}


.education .timeline {
    position: relative;
    max-width: 1200px;
    margin: 0 auto;
}


.education .timeline: ::after {
    content: '';
    position: absolute;
    width: 6px;
    background: rgb(90, 64, 64);
    top: 0;
    bottom: 0;
    left: 50%;
    margin-left: -3px;
    z-index: 2xp;
}

.education .container {
    padding: 10px 40px;
    position: relative;
    background-color: inherit;
    width: 50%;
}


.education .container::after {
    content: '\f501';
    position: absolute;
    width: 25px;
    height: 25px;
    line-height: 25px;
    right: -17px;
    background-color: rbg(252, 252,252);
    border: 4px solid var(--main-color);
    top: 15px;
    border-radius: 50%;
    z-index: 100;
    font-size: 1.89rem;
    text-align: center;
    font-weight: 600;
    font-family: "font awesome\ 5 free";
    color: rbg(90, 64, 64);
}


.education .left {
    left: 0;
}


.education .right {
    left: 50%;
}


.education .left::before {
    content: '';
    height: 0;
    position: absolute;
    top: 22px;
    width: 0;
    z-index: 1;
    right: 30px;
    border: medium solid var(--main-color);
    border-width: 10px 0 10px 10px;
    border-color: transparent transparent transparent var(--main-color);
}


.education .right::before {
    content: '';
    height: 0;
    position: absolute;
    top: 22px;
    width: 0;
    z-index: 1;
    right: 30px;
    border: medium solid var(--main-color);
    border-width: 10px 10px 10px 0;
    border-color: transparent var(--main-color) transparent transparent 
}

 
.education .right::after {
    left: -16px;
}


.education .content {
    background: var(--main-color);
    position: relative;
    border-radius: 6px;
}


.education .content .tag {
    font-size: 1.5rem;
    padding-top: 1.5rem;
    padding-left: 1.5rem;
}


.education .content .decs {
    margin-left: 1.5rem;
    padding-bottom: 1rem;
}


.education .content .tag h2 {
    font-size: 2rem;
    font-weight: 600;
    color: black;
}


.education .content .decs p {
    font-size: 1.3rem;
    font-weight: 500;
}


@media screen and (max-width:600px) {
    .education .timeline {
        margin-top: 2rem;
    }
    .education .timeline::after {
        left: 31px;
    }
    .education .container {
        width: 100%;
        padding-left: 8rem;
        padding-right: 2rem;
    }
    .education .container::after {
        font-size: 2.2rem;
    }
    .education .container::before {
        left: 61px;
        border: medium solid var(--main-color);
        border-width: 10px 10px 10px 0;
        border-color: transparent var(--main-color) transparent transparent;
    }
    .education .left::after {
        left: 15px;
    }
    .education .right::after {
        left: 15px;
    }
    .education .right {
        left: 0%;

    }
}


.content form {
    max-width: 70rem;
    margin: 1rem auto;
    margin-bottom: 3rem;
    text-align: center;
}


.contact form .input-box {
    display: flex;
    justify-content: center;   
    flex-wrap: wrap;
}



.contact form .input-box input,
.contact form textarea {
    width: 100%;
    padding: 1.5rem;
    font-size: 1.6rem;
    color: var(--text-color);
    background: var(--bg-color);
    border-radius: 0.8rem;
    border: 2px solid var(--main-color);
    margin: 1rem 0;
    resize: none;
}


.contact form .btn {
    margin-top: 2rem;
}


.footer{
    position: relative
    bottom 0;
    width: 100%;
    padding: 40px 0;
    background-color: var(--main-color);
}


.footer .social {
    text-align: center;
    padding-bottom: 25px;
    color: black;
}


.footer .social a {
    font-size: 25px;
    color: black;
    border: 2px solid black;
    width: 42px;
    height: 42px;
    line-height: 42px;
    display: inline-block;
    text-align: center;
    border-radius: 50%;
    margin: 0 10px;
    transition: 0.3s ease;
}


.footer .social a:hover {
    transform: scale(1.2)translateY(-5px);
    background: black;
    color: var(--main-color);
}


.footer ul {
    margin-top: 0;
    padding: 0;
    font-size: 18px;
    line-height: 1.8;
    margin-bottom: 0;
    text-align: center;
}


.footer ul li a{
    color: black;
    border-bottom: 3px solid transparent;    
    transition: 0.3s ease;
}


.footer ul li a:hoover {
    border-bottom: 3px solid black;
}


.footer ul li {
    display: inline-block;
    padding: 0 15px;
}


footer .copyright {
    margin-top: 50px;
    text-align: center;
    font-size: 16px;
    color: black;
}


@media(max-width:1285px) {
    html {
        font-size: 55%;
    }
    .services-container {
        padding-bottom: 7rem; ;
        grid-template-columns: repeat(1, 1fr);
        margin: 0 5rem;     
    }  
}


@media(max-width:991px) {
    header {
        padding: 2rem 3%;
    }
    .section {
        padding: 10rem 3% 2rem;
    }
    .services {
        padding-bottom: 7rem;
    }
    .footer {
        padding: 2rem 3%;
    }
}

 
@media (max-width:895) {
    .services h2{
        margin-bottom: 3rem;
    }
    .services-container{
        grid-template-columns: repeat(1,1fr);
    }
}










