<#import "parts/foundation.ftl" as found>


<@found.page>
<div>
    <form method="post" enctype="multipart/form-data">
        <div><input type="text" name="tag" placeholder="Введите Tag" required /></div>
        <div><input type="text" name="head" placeholder="Введите Тему" required /></div>
        <div><input type="text" name="body" placeholder="Введите Сообщение" required /></div>
        <div><input type="file" name="file" placeholder="Добавьте картинку" /></div>
        <div><input type="hidden" name="_csrf" value="${_csrf.token}" /></div>
        <button type="submit">Добавить</button>
    </form>
</div>
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
        <b>${message.head}</b>
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