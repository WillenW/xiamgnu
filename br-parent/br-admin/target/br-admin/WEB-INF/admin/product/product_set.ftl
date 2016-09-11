<!DOCTYPE html>
<html>
<@admin.head />
<script type="text/javascript">
    function setimg() {
    setsrc();
    }
    
      function setsrc(){

			var docObj = document.getElementById("btn");//获取file文本对象
				var imgObjPreview = document.getElementById("img1");//获取logo对象
				if (docObj.files && docObj.files[0]) {
					//火狐下，直接设img属性
					imgObjPreview.style.display = 'block';
					imgObjPreview.style.width = '200px';
					imgObjPreview.style.height = '200px';
					//imgObjPreview.src = docObj.files[0].getAsDataURL();

					//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
					imgObjPreview.src = window.URL
							.createObjectURL(docObj.files[0]);
				} else {
					//IE下，使用滤镜
					docObj.select();
					
					var imgSrc = document.selection.createRange().text;
					var localImagId = document.getElementById("logo");
					//必须设置初始大小
					localImagId.style.width = "200px";
					localImagId.style.height = "20px";
					//图片异常的捕捉，防止用户修改后缀来伪造图片
					try {
						localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
						localImagId.filters
								.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
					} catch (e) {
						alert("您上传的图片格式不正确，请重新选择!");
						return false;
					}
					imgObjPreview.style.display = 'none';
					document.selection.empty();
				}
				return true;
	}
    </script>
    <style type="text/css">
      .pt{}
      .pt td {
          text-align: center;
          padding: 5px;
      }
      .pd{
         margin-top:5px;
      }
    </style>
<body class="sticky-header">
<@admin.start 11/>
<form action="<@admin.ctx />/p/add-product" method="post" enctype="multipart/form-data" id="f">
<div style="text-align:center">
	<div class="panel panel-default">
		<div class="panel-body" >
			<table class="pt" style="width: 100%;height: 220px;">
				<tr style="height:50px">
					<td rowspan="2" style="width: 200px"><a href="javascript:" onclick="$('#btn').click()"><img id="img1" src="<@admin.ctx />/static/images/add.jpg"
						class="img-thumbnail" style="width:200px;height: 200px" ></a>
						</td>
					<td valign="bottom"><label for="input1" class="control-label">产品名称</label></td>
					<td valign="bottom">
							<input type="text" class="form-control" id="input1" name="product_name"
								placeholder="产品名称">
					</td>
				</tr>
				<tr valign="top">
					<td style="width: 120px"><label for="input2" class="control-label">产品详细信息</label></td>
					<td valign="top"><textarea class="form-control" style="height:100%" rows="6" id="input2" name="memo"></textarea>
					</td>
					<td></td>
				</tr>
				<tr style="height:80px" valign="top">
					<td><input type="file" onchange="setimg()" id="btn" style="display:none;" name="product_img"> <a href="#" class="btn btn-warning btn-sm" role="button" onclick="$('#btn').click()">选择产品图片</a>
					</td>
					<td></td>
					<td><label for="input2" class="control-label">首页是否展示<input type="checkbox"></label></td>             
				</tr>
			</table>	
		</div>
		
	</div>
	<a href="#" class="btn btn-success btn-lg" role="button" onclick="$('#f').submit()">保存产品</a>
	</div>
	</form>
<@admin.end />
</body>
</html>
