<#import "parts/foundation.ftl" as found>


<@found.page>
<div>Список сообщений :</div>
<div>
    <form method="get" action="/homepage">
        <input type="text" name="filter" value="${filter?ifExists}" placeholder="Введите фильтр" />
        <button type="submit">Найти</button>
    </form>
</div>
<#list messages as message>
    <div>
        <b>${message.id}</b>
        <b>${message.tag}</b>
        <b>${message.body}</b>
        <b>${message.authorName}</b>
        <div>
            <#if message.filename??>
                <img src="/img/${message.filename}"/>
            </#if>
        </div>
    </div>
<#else>
    <div>No messages</div>
</#list>
</@found.page>