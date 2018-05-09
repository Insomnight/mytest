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
	<div>
	
	<div id="app-7">
	  <ol>
	    <!--
	      现在我们为每个 todo-item 提供 todo 对象
	      todo 对象是变量，即其内容可以是动态的。
	      我们也需要为每个组件提供一个“key”，稍后再
	      作详细解释。
	    -->
	    <todo-item
	      v-for="item in groceryList"
	      v-bind:todo="item"
	      v-bind:key="item.id">
	    </todo-item>
	  </ol>
	</div>
	
	</div>
	<script type="text/javascript">
	
		// 定义名为 todo-item 的新组件
		Vue.component('todo-item1', {
		  template: '<li>这是个待办项</li>'
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
		
		Vue.component('todo-item', {
		  props: ['todo'],
		  template: '<li>{{ todo.text }}</li>'
		});

		var app7 = new Vue({
		  el: '#app-7',
		  data: {
		    groceryList: [
		      { id: 0, text: '蔬菜' },
		      { id: 1, text: '奶酪' },
		      { id: 2, text: '随便其它什么人吃的东西'}
		    ]
		  }
		});
	</script>
</body>

</html>
