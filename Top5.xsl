<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
    <head>
        
        <style>
        ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  background-color: #333333;
}

li {
  display: inline-block;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111111;
}

/* Dropdown Button */
.Categoriesbtn {
  background-color: #333333;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  font-family: "Times New Roman"
}

/* The container div - needed to position the dropdown content */
.Categories {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.Categories-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.Categories-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.Categories-content a:hover {background-color: #ddd;}

/* Show the dropdown menu on hover */
.Categories:hover .Categories-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.Categories:hover .Categoriesbtn {background-color: #111111;}
        
        table {
  border-collapse: collapse;
  width: 100%;
            height:50%;
}

th, td {
  text-align: center;
  padding: 8px;
        border: 1px solid black;
}

tr:nth-child(even) {background-color: #f2f2f2;}
tr:hover{

background-color:pink;
}
        
        body{background-color: #fe4040;
background-image: linear-gradient(90deg, #fe4040 0%, #70dcfa 100%);
}
        
    </style>
        
    </head>
<body>
    
        <ul>
      <li><a href="MiniProject.html" class="active">Home</a></li>
      <li>
          <div class="Categories">
            <button class="Categoriesbtn">Categories</button>
            <div class="Categories-content">
                <a href="Action_and_Adventure.html">Action and Adventure</a>
                <a href="Comedy.html">Comedy</a>
                <a href="Drama.html">Drama</a>
                <a href="Crime.html">Crime</a>
                <a href="Romance.html">Romance</a>
            </div>
          </div>
      </li>
      <li><a href="Contacts.html">Contact</a></li>
      <li><a href="About.html">About</a></li>
    </ul>
    
    <h1 style="text-align: center; color: aliceblue; font-size: 3em; text-shadow: 2px 2px 30px red;">Top 5 Series</h1>

  <table>
    <tr bgcolor="">
      <th>Name</th>
      <th>Category</th>
      <th>Rating</th>
    </tr>
    <xsl:for-each select="series/diff_series">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="category"/></td>
      <td><xsl:value-of select="rating"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

