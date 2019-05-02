<#import "parts/foundation.ftl" as found>

<@found.page>
    <div>
        <form method="post" action="/login">
            <div><label>User Name : <input type="text" name="username" placeholder="Login" /></label></div>
            <div><label>Password : <input type="password" name="password" placeholder="Password" /></label></div>
            <div><input type="hidden" name="_csrf" value="${_csrf.token}" /></div>
            <div><input type="submit" value="Sign In" /></div>
        </form>
    </div>
    <div>
        <a href="/registration">Add new user</a>
    </div>
</@found.page>