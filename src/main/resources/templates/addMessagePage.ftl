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
    <div>Добавьте картинку :</div>
    <div class="input-group mt-2">
        <div class="custom-file">
            <input type="file" name="file" class="custom-file-input" id="inputGroupFile">
            <label class="custom-file-label" for="inputGroupFile" aria-describedby="inputGroupFileAddon">Выберете фаил</label>
        </div>
    </div>
    <div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-dark mt-3">Добавить</button>
    </div>
</@found.page>