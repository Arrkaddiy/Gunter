<#macro logoutB>
<div>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Выход</button>
    </form>
</div>
</#macro>

<#macro loginB>
<div>
    <form action="/main" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Авторизация</button>
    </form>
</div>
</#macro>