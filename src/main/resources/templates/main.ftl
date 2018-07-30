<#import "parts/common.ftl" as c>

<@c.page>
<div class="form-row">
    <div class="form=group col md-6">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" class="form-control" value="${filter?ifExists}"
                   placeholder="Search by tag">
            <button type="submit" class="btn btn-primary ml-2">Search</button>
        </form>
    </div>
</div>
<a class="btn btn-primary mt-3" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample">
    Add new Item
</a>
<div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" name="text" class="form-control" placeholder="Введите новость">
            </div>
            <div class="form-group">
                <input type="text" name="tag" class="form-control" placeholder="Введите тэг">
            </div>
            <div class="form-group">
                <div class="custom.file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="form-group">
                <button type="submit" class="btn btn-primary"> Добавить</button>
            </div>
        </form>
    </div>
</div>

<div class="card-columns">
    <#list news as item>
        <div class="card my-3"">

          <#if item.filename??>
              <img src="/img/${item.filename}" class="card-img-top">
          </#if>

            <div class="m-2">
                <span>${item.text}</span>
                <i>${item.tag}</i>
            </div>
            <div class="card-footer text-muted">
                ${item.authorName}
            </div>
        </div>
    <#else >
 No news
    </#list>
</div>

</@c.page>