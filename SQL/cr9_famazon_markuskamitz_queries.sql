
'how many customers does famazon really have ?'
SELECT COUNT(customers.customer_id) AS "All Customers" FROM customers;


'whats the average price of a famazon product?'
SELECT AVG(products.price) AS 'Average Price' FROM `products` ;


'I want to know all the names of the customers of famazon and their e-mails so i can spam the hell out of them'
SELECT customers.name, customers.email AS "Spam Helper" FROM customers;


'Now I want to know all about our customers!'
select customers.name, customers.email, customers.phone, address.city, address.street, address.house_number 
from customers join address 
on customers.customer_id = address.address_id;


'Good Job! Can u add the username and password please? Smiles at me ....'
select customers.name, customers.email, customers.phone, address.city, address.street, address.house_number,
 account.username, account.password 
 from customers 
    join address 
        on customers.address_id = address.address_id 
    join account 
        on address.address_id = account.account_id;


'Phantastic and now i would also like to know how much each of them spent  already and when ... laughs'
select customers.name, customers.email, customers.phone, address.city, address.street, address.house_number,
 account.username, account.password, products.price, invoice.invoice_date 
 from customers 
    join address 
        on customers.address_id = address.address_id 
    join account 
        on address.address_id = account.account_id
    join products 
        on address.address_id = products.product_id
    join invoice 
        on address.address_id = invoice.invoice_id;


'Are you crazy? In invoice there are only stupid numbers! Show me all the data, NOW!'
select invoice.invoice_date,products.name, products.description, shipping.shipping_date,companies.name
from invoice 
	join products 
    	on invoice.invoice_id = products.product_id
    join shipping 
    	on products.product_id = shipping.shipping_id
    join payment 
    	on products.product_id = payment.payment_id
    join e_commerce
    	on payment.payment_id = e_commerce.commerce_id
    join companies
    	on e_commerce.company_id = companies.company_id;
' ähm is it enough now?'

'ok one little join fiasko at the end :)'

select invoice.invoice_date, products.name, companies.name,
account.username, account.password, customers.name, customers.email, customers.phone
from invoice 
	join products 
    	on invoice.invoice_id = products.product_id
    join shipping 
    	on products.product_id = shipping.shipping_id
    join payment 
    	on products.product_id = payment.payment_id
    join e_commerce
    	on payment.payment_id = e_commerce.commerce_id
    join companies
    	on e_commerce.company_id = companies.company_id
    join account
    	on invoice.invoice_id = account.invoice_id
    join customers
    	on account.invoice_id = customers.customer_id;
` ok it's eanough stop it now!`







