<#import "parts/foundation.ftl" as found>

<@found.page>
<form method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="messageTag">Тема сообщения :</label>
        <input type="text" class="form-control" id="messageTag" placeholder="Тема" name="tag" required />
    </div>
    <div class="form-group">
        <label for="messageBody">Сообщение :</label>
        <input type="text" class="form-control" id="messageBody" placeholder="Сообщение" name="body" required />
    </div>
    <div class="form-group">
        <label for="messageFile">Добавьте картинку</label>
        <input type="file" class="form-control-file" id="messageFile" name="file" placeholder="Добавьте картинку" />
    </div>
    <div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-dark">Добавить</button>
    </div>
</@found.page>