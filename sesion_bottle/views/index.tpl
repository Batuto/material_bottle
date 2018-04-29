%rebase ./views/base.tpl page_title="Lista de Oyentes"
<div class="panel panel-default">
    <div class="panel-heading">Oyentes</div>
    <div class="panel-body">
        <ul class="group-list">
            %for id, oyente in enumerate(oyentes):
                %if not str(oyente[0]):
                    %var = "[!]-NULL"
                %else:
                    %nombre = oyente[0]
                %end
                <li class="list-group-item">
                    <span>
                        <a href="/oyente{{id}}">{{id}} - {{nombre}}</a>
                        <a role="button" class="btn btn-danger btn-xs pull-right" href="/borrar{{id}}">Borrar</a>
                    </span>
                </li>
            %end
        </ul>
    </div>
    <div class="panel-footer">
        <a role="button" class="btn btn-default" href="/nuevo">Agregar nuevo oyente</a>
    </div>
</div>
