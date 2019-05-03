<#macro modalA>
<div class="input-group-append">
    <button class="btn btn-danger" data-toggle="modal" data-target="#saveModalA" id="button-addonA">Active</button>
</div>
<div class="modal fade" id="saveModalA" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="saveModalLabelA">Подтвеждение</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Вы уверены что хотите произвести изменения?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
                <form method="post" action="users/active/${user.id}">
                    <input type="hidden" name="userId" value="${user.id}" />
                    <input type="hidden" name="_csrf" value="${_csrf.token}" />
                    <button type="submit" class="btn btn-primary">Сохранить изменения</button>
                </form>
            </div>
        </div>
    </div>
</div>
</#macro>

<#macro modalD>
<div class="input-group-append">
    <button class="btn btn-danger" data-toggle="modal" data-target="#saveModalD" id="button-addonD">Active</button>
</div>
<div class="modal fade" id="saveModalD" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="saveModalLabelD">Подтвеждение</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Вы уверены что хотите произвести изменения?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
                <form method="post" action="users/deactive/${user.id}">
                    <input type="hidden" name="userId" value="${user.id}" />
                    <input type="hidden" name="_csrf" value="${_csrf.token}" />
                    <button type="submit" class="btn btn-primary">Сохранить изменения</button>
                </form>
            </div>
        </div>
    </div>
</div>
</#macro>