<#import "parts/foundation.ftl" as found>

<@found.page>
<h4>Список пользователей :</h4>


<table>
    <thead>
        <tr>
            <th>Login</th>
            <th>Role</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <#list users as user>
        <tr>
            <td>${user.username}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td><a href="/users/${user.id}">Изменить</a></td>
        </tr>
    </#list>
    </tbody>
</table>
</@found.page>