<#import "parts/foundation.ftl" as found>


<@found.page>
<div>Список сообщений :</div>
<div>
    <form method="get" action="/homepage">
        <div class="input-group">
                <select class="custom-select col-2" id="inputGroupFilter" name="filterType">
                    <option selected>Веберете фильтр</option>
                    <option value="tag">Поиск по Tag</option>
                    <option value="author">Поиск по Автору</option>
                </select>
            <input type="text" class="form-control" name="filter" value="${filter?ifExists}" placeholder="Введите фильтр">
            <div class="input-group-append">
                <button type="submit" class="btn btn-outline-dark">Найти</button>
            </div>
        </div>
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