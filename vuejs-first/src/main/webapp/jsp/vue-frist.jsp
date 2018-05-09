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
	<!-- 
		{{message}}
		声明式地将数据渲染进 DOM 的系统：
		{{}}:估计是new对象的是第一个括号
		第二个括号是json格式中的data属性:名字
	 -->
	<div id="app">
	  {{ message }}
	</div>
	<div id="app-2">
		<span v-bind:title="message">
			鼠标悬停几秒钟查看此处动态绑定的提示信息！
		</span>
	</div>
	<div id="app-3">
	  <p v-if="seen">现在你看到我了</p>
	</div>
	<div id="app-4">
	  <ol>
	    <li v-for="todo in todos">
	      {{ todo.text }}
	    </li>
	  </ol>
	</div>
	<div id="app-5">
		<p>{{ message }}</p>
 		<button v-on:click="reverseMessage">逆转消息</button>	
	</div>
	<div id="app-6">
		<p>{{ message }}</p>
	    <input v-model="message">
	</div>
	<script type="text/javascript">
		var app = new Vue({
		  el: '#app',
		  data: {
		    message: 'Hello Vue!'
		  }
		});
		
		var app2 = new Vue({
		  el: '#app-2',
		  data: {
		    message: '页面加载于 ' + new Date().toLocaleString()
		  }
		});
		
		var app3 = new Vue({
			el:'#app-3',
			data:{
				seen:true
			}
		});
		
		var app4 = new Vue({
			el:'#app-4',
			data:{
				todos: [
			      { text: '学习 JavaScript' },
			      { text: '学习 Vue' },
			      { text: '整个牛项目' }
		   		]
			}
		});
		
		var app5 = new Vue({
			el:'#app-5',
			data: {
			    message: 'Hello Vue.js!'
			  },
		     methods: {
			    reverseMessage: function () {
			      this.message = this.message.split('').reverse().join('')
			    }
			  }
		});
		var app6 = new Vue({
			el:'#app-6',
			data:{
				message: 'Hello Vue!'
			}
		});
	</script>
</body>

</html>
