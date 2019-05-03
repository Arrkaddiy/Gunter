<#import "parts/foundation.ftl" as found>

<@found.page>
    <div class="text-center col-4 mx-auto">
        <form method="post" action="/login">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <div class="list-group">
                <input type="text" name="username" id="inputLogin" class="list-group-item list-group-item-action" placeholder="Login" required autofocus>
                <input type="password" name="password" id="inputPassword" class="list-group-item list-group-item-action" placeholder="Password" required>
            </div>
            <div><input type="hidden" name="_csrf" value="${_csrf.token}" /></div>
            <button class="btn-lg mt-1 btn btn-dark btn-block" type="submit">Авторизоваться</button>
            <a  class="mt-1 btn-lg btn btn-dark btn-block" href="/registration">Зарегестрироваться</a>
        </form>
    </div>
</@found.page>