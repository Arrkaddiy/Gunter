<#import "parts/foundation.ftl" as found>

<@found.page>
<div>Профиль пользователя</div>
<form action="/users/${user.id}" method="post">
    <div>Id Пользователя :<input type="text" value="${user.id}" name="userId" readonly /></div>
    <div>Login :<input type="text" value="${user.username}" name="username" /></div>
    <div>
        <#list roles as role>
            <div>
                <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
    </div>
    <div><input type="hidden" name="_csrf" value="${_csrf.token}" /></div>
    <div><button type="submit">Сохранить</button></div>
</form>
</@found.page>