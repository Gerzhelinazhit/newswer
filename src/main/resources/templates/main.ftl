<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>

<div>
<@l.logout/>
    <span><a href="/user">User list</a> </span>
</div>

<div>
    <form method="post">
        <input type="text" name="text" placeholder="Введите новость">
        <input type="text" name="tag" placeholder="Введите тэг">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit"> Добавить</button>
    </form>
</div>
<div>
    Лента новостей
</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}">
    <button type="submit">Найти</button>
</form>
 <#list news as item>
  <div>
      <b>${item.id}</b>
      <span>${item.text}</span>
      <i>${item.tag}</i>
      <strong>${item.authorName}</strong>
  </div>
 <#else >
 No news
 </#list>

</@c.page>