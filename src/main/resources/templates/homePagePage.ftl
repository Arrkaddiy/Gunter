<#import "parts/foundation.ftl" as found>


<@found.page>
<div>Список сообщений :</div>
<div>
    <form method="get" action="/homepage">
        <div class="input-group">
                <select class="custom-select col-2" id="inputGroupFilter" name="filterType">
                    <option selected>Выберете фильтр</option>
                    <option value="tag">Поиск по Tag</option>
                    <option value="author">Поиск по Автору</option>
                </select>
            <input type="text" class="form-control" name="filter" value="${filter?ifExists}" placeholder="Введите фильтр">
            <div class="input-group-append">
                <button type="submit" class="btn btn-dark">Найти</button>
            </div>
        </div>
    </form>
</div>
<div class="card-columns">
    <#list messages as message>
        <#include "parts/card.ftl">
    <#else>
        <div>No messages</div>
    </#list>
</div>
</@found.page>