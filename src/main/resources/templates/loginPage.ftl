<#import "parts/foundation.ftl" as found>

<@found.page>
    <form method="post" action="/login" class="mx-auto text-center col-sm-4">
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
        <div class="list-group ">
            <input type="text" name="username" id="inputLogin" class="list-group-item list-group-item-action" placeholder="Login" required autofocus>
            <input type="password" name="password" id="inputPassword" class="list-group-item list-group-item-action" placeholder="Password" required>
        </div>
        <div><input type="hidden" name="_csrf" value="${_csrf.token}" /></div>
        <button class="mt-2 btn btn-dark" type="submit">Авторизоваться</button>
    </form>
    <div class="text-center">
        <a  class="mt-2 mx-auto col-sm-4 btn btn-dark" href="/registration">Зарегестрироваться</a>
    </div>
</@found.page>