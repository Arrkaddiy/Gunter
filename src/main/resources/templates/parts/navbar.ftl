<#include "security.ftl">
<#import "login.ftl" as login>


<nav class="navbar  navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">
        <img src="/static/navbar/GuntherBar.jpg" width="120" height="30" class="d-inline-block align-top" alt="">
    </a>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="/homepage">Домашняя страница<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#">Pricing<span class="sr-only">(current)</span></a>
            </li>
            <#if isAdmin>
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbarAdmistrationMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Администрирование
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarAdmistrationMenuLink">
                    <a class="dropdown-item" href="/users">Списко пользователей</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            </#if>
        </ul>
    </div>
    <div class="navbar-text mr-3">${name}</div>
    <#if user??>
        <@login.logoutB />
    <#else>
        <@login.loginB />
    </#if>
</nav>
