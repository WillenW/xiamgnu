<!DOCTYPE html>
<html>
<@admin.head />
 <link href="<@admin.ctx/>/static/js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
 <link href="<@admin.ctx/>/static/js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
 <link rel="stylesheet" href="<@admin.ctx/>/static/js/data-tables/DT_bootstrap.css" />>

<body class="sticky-header">
<@admin.start 12/>
        <div class="row">
        <div class="col-sm-12">
        <section class="panel">
        <header class="panel-heading">
                                  产品信息列表                     
            <span class="tools pull-right">
                <div class="input-group  input-group-sm">
                   <input type="text" class="form-control" placeholder="请输入查询条件">
                   <span class="input-group-btn">
                       <button class="btn btn-default" type="button">查询</button>
                   </span>
                </div>
             </span>
        </header>
        <div class="panel-body">
        <table class="table table-bordered">
        <thead>
        <tr>
            <th >序号</th>
            <th>产品名称</th>
            <th class="hidden-phone">发布日期</th>
            <th class="hidden-phone">产品浏览次数</th>
            <th class="hidden-phone">首页是否展示</th>
            <th class="hidden-phone">产品详情</th>
        </tr>
        </thead>
        <tbody>
        <tr class="gradeX">
            <td>Trident</td>
            <td>Internet
                Explorer 4.0</td>
            <td class="hidden-phone">Win 95+</td>
            <td class="center hidden-phone">4</td>
            <td class="center hidden-phone">4</td>
            <td class="center hidden-phone">dsfsfsdfsfsfsdfss..</td>
        </tr>
        <tr class="gradeC">
            <td>Trident</td>
            <td>Internet
                Explorer 5.0</td>
            <td class="hidden-phone">Win 95+</td>
            <td class="center hidden-phone">5</td>
            <td class="center hidden-phone">C</td>
            <td class="center hidden-phone">4</td>
        </tr>
        </tbody>
        </table>
    <div>
    <!-- Split button -->
     每页    
      <div class="btn-group">
      <div class="btn-group">
      	<button type="button" class="btn btn-success btn-sm">10</button>
      	<button type="button" class="btn btn-success dropdown-toggle btn-sm"         
      		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
      		<span class="caret"></span> <span class="sr-only">Toggle           
      			Dropdown</span>                                                  
      	</button>                                                            
      	<ul class="dropdown-menu">                                           
      		<li><a href="#">10</a>                                         
      		</li>                                                              
      		<li><a href="#">20</a>                                 
      		</li>                                                              
      		<li><a href="#">50</a>                            
      		</li>                                                                                      
      		<li><a href="#">100</a>                                 
      		</li>                                                              
      	</ul>                                                                
      </div>
      条，共 2 条记录                                                                 
		<ul class="pagination pagination-sm" style="float:right;margin-top:0">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&laquo;</span> </a></li>
			<li><a href="#" >1</a>
			</li>
			<li class="active"><a href="#">2</a>
			</li>
			<li><a href="#">3</a>
			</li>
			<li><a href="#">4</a>
			</li>
			<li><a href="#">5</a>
			</li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
    </div>
        </div>
        </section>
        </div>
        </div>
<@admin.end />
<script type="text/javascript" language="javascript" src="<@admin.ctx/>/static/js/advanced-datatable/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="<@admin.ctx/>/static/js/data-tables/DT_bootstrap.js"></script>
<script src="<@admin.ctx/>/static/js/dynamic_table_init.js"></script>
</body>
</html>
