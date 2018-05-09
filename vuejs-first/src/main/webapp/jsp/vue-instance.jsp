<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>vue学习</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/vue/vue.js"></script>
</head>
<body>
	<div id="example">
		<input type="text" value="" name=""/>
	</div>
	
	<script type="text/javascript">
		//我们的数据对象
		var data = { a : 1 };
	
		//该回血被加入到一个Vue
		var vm = new Vue({
			el: '#example',
			data: data
		});
		
		alert(vm.$data===data);
		
		alert(vm.$el===document.getElementById('example'));
		
		// $watch 是一个实例方法
		vm.$watch('a', function (newValue, oldValue) {
		  // 这个回调将在 `vm.a` 改变后调用
		  alert("变化之前的值:"+oldValue+",变化之后的值:"+newValue);
		});
	</script>
	
	
	<!-- vue模板 -->
	<div id=""></div>
</body>

</html>
