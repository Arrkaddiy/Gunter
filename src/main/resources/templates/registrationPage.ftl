<#import "parts/foundation.ftl" as found>

<@found.page>
    <h3>Форма регистрации нового пользователя :</h3>
    <h4>${message?ifExists}</h4>
    <div>
        <form action="/registration" method="post">
            <div class="form-group row">
                <label for="inputLogin" class="col-sm-1 col-form-label">Login</label>
                <div class="col-sm-6">
                    <input type="text" name="username" class="form-control" id="inputLogin" placeholder="Login" required />
                </div>
            </div>
            <div class="form-group row">
                <label for="inputPassword" class="col-sm-1 col-form-label">Password</label>
                <div class="col-sm-6">
                    <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password" required />
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail" class="col-sm-1 col-form-label">Email</label>
                <div class="col-sm-6">
                    <input type="email" name="email" class="form-control" id="inputEmail" placeholder="Email" />
                </div>
            </div>
            <div><input type="hidden" name="_csrf" value="${_csrf.token}" /></div>
            <button class="btn-lg mt-1 btn btn-dark col-7" type="submit">Зарегестрироваться</button>
        </form>
    </div>

</@found.page>