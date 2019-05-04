<#import "parts/foundation.ftl" as found>
<#import "parts/modal.ftl" as modal>
<#include "parts/security.ftl">

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
    <#if isAdmin>
        <a href="/users/${user.id}" class=" ml-1 btn btn-primary active" role="button">Изменить</a>
    </#if>
</div>
</#list>
</@found.page>