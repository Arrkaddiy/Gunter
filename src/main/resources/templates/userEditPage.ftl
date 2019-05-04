<#import "parts/foundation.ftl" as found>

<@found.page>
<h4>Профиль пользователя : ${user.username}</h4>
<form action="/users/${user.id}" method="post">
    <div class="form-group row">
        <label for="inputId" class="col-sm-1 col-form-label">User Id</label>
        <div class="col-sm-6">
            <input type="text" name="userId" class="form-control" id="inputId" value="${user.id}" readonly />
        </div>
    </div>
    <div class="form-group row">
        <label for="inputLogin" class="col-sm-1 col-form-label">Login</label>
        <div class="col-sm-6">
            <input type="text" name="username" class="form-control" id="inputLogin"  value="${user.username}" placeholder="Login" required />
        </div>
    </div>
    <div class="form-group row">
        <label for="inputPassword" class="col-sm-1 col-form-label">Password</label>
        <div class="col-sm-6">
            <input type="text" name="password" class="form-control" id="inputPassword" value="${user.password}" placeholder="Password" required />
        </div>
    </div>
    <div class="form-group row">
        <label for="inputEmail" class="col-sm-1 col-form-label">Email</label>
        <div class="col-sm-6">
            <input type="email" name="email" class="form-control" id="inputEmail" value="${user.email}" placeholder="Email" />
        </div>
    </div>
    <div class="form-check">
        <#list roles as role>
        <input class="form-check-input" type="checkbox" name="${role}" value="" id="check_${role}" ${user.roles?seq_contains(role)?string("checked", "")}>
        <label class="form-check-label mr-5" for="check_${role}">
            ${role}
        </label>
    </#list>
    </div>
    <div><input type="hidden" name="_csrf" value="${_csrf.token}" /></div>
    <button type="submit" class="mt-2 btn btn-dark btn-lg">Сохранить</button>
</form>
</@found.page>