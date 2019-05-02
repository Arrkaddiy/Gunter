<#macro logout>
<div>
    <form method="post" action="/logout">
        <div><input type="hidden" name="_csrf" value="${_csrf.token}" /></div>
        <div><input type="submit" value="Sign Out" /></div>
    </form>
</div>
</#macro>