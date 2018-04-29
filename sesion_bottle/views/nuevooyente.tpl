%rebase ./views/base.tpl page_title="Nuevo oyente"
<div class="panel panel-default">
    <div class="panel-heading">Agregar nuevo oyente a la lista de Oyentes</div>
        <div class="panel-body">
            <form class="form-horizontal" action="/nuevo" method="POST">
                <ul class="group-list">
                    <li class="list-group-item">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="nombre">Nombre:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Nombre" name="nombre" required pattern="(([a-z]|[A-Z])+[ ]?)+"/>
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="apellido">Apellido:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Apellido" name="apellido" required pattern="(([a-z]|[A-Z])+[ ]?)+"/>
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="edad">Edad:</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" name="edad" size="2" placeholder="Edad" required pattern='\d{3}'/>
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="bio">Bio:</label>
                            <div class="col-sm-10">
                                <textarea name="bio" class="form-control" rows="10" cols="30" placeholder="Breve descripción" required></textarea>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="panel-footer">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" name="guardar" value="Guardar" class="btn btn-sucsess"/>
                        <button type="button" class="btn btn-default" name="cancel" onclick="parent.location='/oyentes'">Cancelar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
