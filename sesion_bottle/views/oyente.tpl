%rebase ./views/base.tpl page_title="Lista de Oyentes"
%"""
%"""
<div class="panel-group">
    <div class="panel panel-default">
        <div class="well">
            <h2>{{nombre}}
                <br/><small>{{apellido}}</small>
            </h2>
        </div>
        <div class="panel-body">
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
            <label class="control-label col-sm-2 weirdo" for="reg_date">Registrado:</label>
            </div>
            <div class="panel-body reg_date">
                {{regdatetime}}
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
            <label class="control-label col-sm-2 weirdo" for="age">Edad:</label>
            </div>
            <div class="panel-body age" name="Edad">
                {{edad}}
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
            <label class="control-label col-sm-2 weirdo" for="bio">Bio:</label>
            </div>
            <div class="panel-body age" name="bio">
                <p>{{bio}}</p>
            </div>
        </div>
    </div>
    <div class="panel-footer panel-default">
        <button class="btn btn-disabled" onClick=window.history.back()>Regresar</button>
        <button class="btn btn-default" onclick="location.href='/editar{{oid}}'">Editar</button>
        <button class="btn btn-danger" onclick="location.href='/borrar{{oid}}'">Borrar</button>
    </div>
</div>
