<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Список групп</h1>
    <table class="table">
        <thead>
            <tr>
                <th class="table-head">Название</th>
                <th class="table-head">Время</th>
                <th class="table-head">Педагог</th>
                <th class="table-head"></th>
                <th class="table-head"></th>
            </tr>
        </thead>
        <tbody class="table-body">
            <#list groups as group>
                <tr>
                    <td class="table-row">${group.title}</td>
                    <td class="table-row">${group.time}</td>
                    <td class="table-row">${group.teacher}</td>
                    <td class="table-row"><a class="link" href="/groups/edit/${group.id}">Редактировать</a></td>
                    <td class="table-row"><a class="link" href="/groups/delete/${group.id}">Удалить</a></td>
                </tr>
            </#list>
        </tbody>
    </table>
    <div class="link-wrapper">
        <a class="link-button" href="/addGroup">Добавить группу</a>
    </div>

</@common.page>