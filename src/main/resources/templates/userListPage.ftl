<#import "parts/foundation.ftl" as found>
<#import "parts/modal.ftl" as modal>

<@found.page>
<h4>Список пользователей :</h4>
<div class="input-group mb-3">
    <div class="input-group-prepend">
        <span class="input-group-text" id="basic-addont">ID</span>
    </div>
    <input type="text" class="form-control col-2" value="Login" aria-describedby="basic-addont" readonly>
    <input type="text" class="form-control col-2" value="Email" aria-describedby="basic-addont" readonly>
    <input type="text" class="form-control" value="Роли :" aria-describedby="basic-addont" readonly>
    <div class="input-group-append">
        <button class="btn btn-success" type="button" id="button-addont" disabled>Active</button>
    </div>
</div>

<#list users as user>
<div class="input-group mb-3">
    <div class="input-group-prepend">
        <span class="input-group-text" id="basic-addon">${user.id}</span>
    </div>
    <input type="text" class="form-control col-2" value="${user.username}" aria-describedby="basic-addon" readonly>
    <input type="text" class="form-control col-2" value="${user.email}" aria-describedby="basic-addon" readonly>
    <#list user.roles as role>
    <input type="text" class="form-control" value="${role}" aria-describedby="basic-addon" readonly>
    </#list>
    <#if user.active>
    <div class="input-group-append">
        <button class="btn btn-success" type="button" disabled>Active</button>
    </div>
    <#else>
    <div class="input-group-append">
        <button class="btn btn-danger" type="button" disabled>Active</button>
    </div>
    </#if>
</div>
</#list>
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