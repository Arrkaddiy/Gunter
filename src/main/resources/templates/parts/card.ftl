<div class="card text-center border-dark mt-2" style="width: 18rem">
    <div class="card-header text-white bg-dark" >
        ${message.authorName}
    </div>
    <#if message.filename??>
        <img class="card-img-top" src="/img/${message.filename}" style="height: 12rem" />
    </#if>
    <div class="card-body">
        <h5 class="card-title">${message.tag}</h5>
        <p class="card-text">${message.body}</p>
    </div>
    <div class="card-footer text-muted bg-dark">
        ${message.date}
    </div>
</div>
