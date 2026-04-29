<h1>Hi, I'm Gunel! <br/><a href="https://github.com/gunelmusayeva1">SQL & PL/SQL Developer | Data Analyst </a>

<h1>🛒 Amazon SQL Analytics</h1>

<p><em>Oracle SQL · Window Functions · CTE · Aggregate Functions</em></p>

---

<h2>📌 About This Project</h2>

<p>In this project, I wrote <b>10 analytical SQL queries</b> on an Amazon e-commerce dataset.
The queries solve real business problems — such as monthly sales growth, top-selling brands, customer behavior, and payment analysis.</p>

---

<h2>🗄️ Dataset</h2>

<p><b>Table:</b> <code>amazon_orders</code></p>

<table>
  <tr>
    <th>Column</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><code>order_id</code></td>
    <td>Unique order identifier</td>
  </tr>
  <tr>
    <td><code>order_date</code></td>
    <td>Date of the order</td>
  </tr>
  <tr>
    <td><code>customer_id</code></td>
    <td>Unique customer identifier</td>
  </tr>
  <tr>
    <td><code>customer_name</code></td>
    <td>Full name of the customer</td>
  </tr>
  <tr>
    <td><code>product_id</code></td>
    <td>Unique product identifier</td>
  </tr>
  <tr>
    <td><code>product_name</code></td>
    <td>Name of the product</td>
  </tr>
  <tr>
    <td><code>category</code></td>
    <td>Product category</td>
  </tr>
  <tr>
    <td><code>brand</code></td>
    <td>Product brand</td>
  </tr>
  <tr>
    <td><code>quantity</code></td>
    <td>Number of items ordered</td>
  </tr>
  <tr>
    <td><code>unit_price</code></td>
    <td>Price per item</td>
  </tr>
  <tr>
    <td><code>discount</code></td>
    <td>Discount applied to the order</td>
  </tr>
  <tr>
    <td><code>tax</code></td>
    <td>Tax amount</td>
  </tr>
  <tr>
    <td><code>shipping_cost</code></td>
    <td>Shipping cost</td>
  </tr>
  <tr>
    <td><code>total_amount</code></td>
    <td>Final order amount</td>
  </tr>
  <tr>
    <td><code>payment_method</code></td>
    <td>Payment method used</td>
  </tr>
  <tr>
    <td><code>order_status</code></td>
    <td>Status of the order (e.g. Delivered)</td>
  </tr>
  <tr>
    <td><code>city</code></td>
    <td>Customer's city</td>
  </tr>
  <tr>
    <td><code>state</code></td>
    <td>Customer's state</td>
  </tr>
  <tr>
    <td><code>country</code></td>
    <td>Customer's country</td>
  </tr>
  <tr>
    <td><code>seller_id</code></td>
    <td>Unique seller identifier</td>
  </tr>
</table>

---

<h2>📋 Queries</h2>

<table>
  <tr>
    <th>#</th>
    <th>Problem</th>
    <th>Techniques Used</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Calculate total sales per month and growth percentage compared to the previous month</td>
    <td><code>CTE</code>, <code>LAG</code>, <code>TO_CHAR</code>, <code>ROUND</code></td>
  </tr>
  <tr>
    <td>2</td>
    <td>Find the top-selling brand by total amount in each category</td>
    <td><code>DENSE_RANK</code>, <code>PARTITION BY</code>, <code>GROUP BY</code></td>
  </tr>
  <tr>
    <td>3</td>
    <td>Calculate the number of days between each customer's first and subsequent orders</td>
    <td><code>MIN OVER</code>, <code>PARTITION BY</code></td>
  </tr>
  <tr>
    <td>4</td>
    <td>Find each seller's percentage share of total sales</td>
    <td><code>SUM OVER</code>, <code>ROUND</code>, <code>GROUP BY</code></td>
  </tr>
  <tr>
    <td>5</td>
    <td>Find the most used payment method in each country</td>
    <td><code>DENSE_RANK</code>, <code>PARTITION BY</code>, <code>COUNT</code></td>
  </tr>
  <tr>
    <td>6</td>
    <td>Calculate the cumulative total amount for each customer</td>
    <td><code>SUM OVER</code>, <code>PARTITION BY</code>, <code>ORDER BY</code></td>
  </tr>
  <tr>
    <td>7a</td>
    <td>Find the percentage of discounted orders within each category</td>
    <td><code>SUM OVER</code>, <code>WHERE discount != 0</code>, <code>ROUND</code></td>
  </tr>
  <tr>
    <td>7b</td>
    <td>Find the ratio of discounted orders to total sales by category</td>
    <td><code>CASE WHEN</code>, <code>SUM OVER</code>, <code>ROUND</code></td>
  </tr>
  <tr>
    <td>8</td>
    <td>Find how much each customer's average order differs from the overall average (in %)</td>
    <td><code>AVG OVER</code>, <code>ROUND</code>, <code>GROUP BY</code></td>
  </tr>
  <tr>
    <td>9</td>
    <td>Find customers who placed only one order</td>
    <td><code>GROUP BY</code>, <code>HAVING</code>, <code>COUNT</code></td>
  </tr>
  <tr>
    <td>10</td>
    <td>Calculate the percentage of delivered orders by city</td>
    <td><code>CASE WHEN</code>, <code>COUNT</code>, <code>ROUND</code>, <code>GROUP BY</code></td>
  </tr>
</table>

---

<h2>🛠️ Tools & Techniques</h2>

<ul>
  <li><b>Oracle PL SQL Developer</b></li>
  <li><b>Window Functions:</b> <code>LAG</code>, <code>DENSE_RANK</code>, <code>MIN OVER</code>, <code>SUM OVER</code>, <code>AVG OVER</code></li>
  <li><b>CTE</b> (<code>WITH</code>)</li>
  <li><b>Aggregate Functions:</b> <code>SUM</code>, <code>COUNT</code>, <code>AVG</code></li>
  <li><b>Conditional logic:</b> <code>CASE WHEN</code></li>
  <li><b>Date functions:</b> <code>TO_CHAR</code></li>
</ul>

---

<h2> 🤳 Connect with me:</h2>


[<img align="left" alt="JoshMadakor | LinkedIn" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/linkedin.svg" />][linkedin]


[linkedin]: https://linkedin.com/in/gunel-musayeva-aa88651aa
