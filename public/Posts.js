fetch("https://jsonplaceholder.typicode.com/posts").then(
    res => {
      res.json().then(
        data => {
          console.log(data.data);
          if (data.data.length > 0) {
  
            var temp = "";
            data.data.forEach((itemData) => {
              temp += "<tr>";
              temp += "<td>" + itemData.id + "</td>";
              temp += "<td>" + itemData.title + "</td>";
              temp += "<td>" + itemData.body + "</td></tr>";
            });
            document.getElementById('data').innerHTML = temp;
          }
        }
      )
    }
  )