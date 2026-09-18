%#template for editing a task
%#the template expects to receive a value for "number" as well a "old", the text of the selected ToDo item
% rebase('base.tpl')
<link rel="stylesheet" href="/static/style.css">

<label for="task_id">Enter task ID:</label>

<input type="number" id="task_id" min="1">

<button onclick="editTask()">Edit</button>

<script>
function editTask() {
    let id = document.getElementById("task_id").value;
    window.location.href = "/edit/" + id;
}
</script>
<p>Edit the task with ID = {{number}}</p >
<form action="/edit/{{number}}" method="post">
  <p>
  <input type="text" name="task" value="{{current_data[0]}}" size="100" maxlength="100">
  <select name="status">
    <option>open</option>
    <option>closed</option>
  </select>
  </p >
  <p><input type="submit" name="save" value="save"></p >
</form>



<p><a href="/home">Back to main page</p >