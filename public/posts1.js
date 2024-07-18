
fetch("https://jsonplaceholder.typicode.com/posts")

  .then((response) => response.json())
  .then((json) => {
    
    let li = `<tr><th>Name  </th><th>Title</th> <th>Body</th></tr>`;

    json.forEach((user) => {
      li += `<tr>
        <td>${user.id}</td>
        <td>${user.title} </td>
        <td>${user.body}</td>
      
      </tr>`;
    });

    document.getElementById("users").innerHTML = li;
  });

fetch("https://jsonplaceholder.typicode.com/posts", {
  method: "POST",

  body: JSON.stringify({
    title: "foo",
    body: "bar",
    userId: 1
  }),

  headers: {
    "Content-type": "application/json; charset=UTF-8"
  }
})
  .then((response) => response.json())

  .then((json) => console.log(json));



  function searchTable() {
    var input, filter, found, table, tr, td, i, j;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("users");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td");
        for (j = 0; j < td.length; j++) {
            if (td[j].innerHTML.toUpperCase().indexOf(filter) > -1) {
                found = true;
            }
        }
        if (found) {
            tr[i].style.display = "";
            found = false;
        } else {
            tr[i].style.display = "none";
        }
    }
}

  