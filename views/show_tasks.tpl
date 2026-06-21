%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
% rebase('base.tpl')
<p>The open ToDo tasks are as follows:</p>
<table border="1">
%for row in rows:
  <tr>
  %for col in row:
    <td>{{col}}</td>
  %end
  </tr>
%end
</table>
<p><a href="/new">Add a new task</a></p>