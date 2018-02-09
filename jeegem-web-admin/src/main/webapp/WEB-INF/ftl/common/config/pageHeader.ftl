<#macro pageHeader place function>
<div class="pageheader">

            <h2><i class="fa fa-list" style="line-height: 48px;padding-left: 1px;"></i> ${function} </h2>

            <div class="breadcrumbs">
              <ol class="breadcrumb">
                <li>所在位置</li>
                <li><a href="${basePath}/user/index.html">JeeGem</a></li>
                <li><a href="javascript:void(0);">${place}</a></li>
                <li class="active">${function}</li>
              </ol>
            </div>

          </div>         
</#macro>