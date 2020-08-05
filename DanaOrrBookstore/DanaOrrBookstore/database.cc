
#include "database.h"
#include <sstream>
/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: MySQL()
 * Description:  Constructor to initialize database conectivity
 *--------------------------------------------------------------------
 */

MySQL::MySQL(bool IsAdmin)
{
	connect = mysql_init(NULL);
	if (!connect)
	{
		cout << "MySQL Initialization Failed";
	}

	if (IsAdmin == true) {
		connect = mysql_real_connect(connect, SERVER, USERADMIN, PASSWORDADMIN, DATABASE, 0, NULL, 0);
	}
	else {
		connect = mysql_real_connect(connect, SERVER, USER, PASSWORD, DATABASE, 0, NULL, 0);
	}
	if (connect)
	{
		cout << "Connection Succeeded\n";
	}

	else
	{
		cout << "Connection Failed\n";
	}
}

/**
 *--------------------------------------------------------------------
 * The methodes below sends relevant queries based on user input to  *
 * MySQL and outputs the tables with the relevant data to the user   *
 *--------------------------------------------------------------------
 */

void MySQL::BookInStock()	//1
{
	string userstring;
	cout << "Enter the name of the book you are looking for if it is in stock: " << endl;
	getline(cin >> ws, userstring);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT `title`, `location` FROM bookstore.books WHERE title LIKE '%" << userstring << "%'";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
					cout << "NULL" << endl;
			}
			cout << "\n";
		}
	}
	else
	{
		cout << "The book was not found in the system" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::OldestCustomer()	//2
{
	mysql_query(connect, "Select * from bookstore.customers WHERE join_date LIKE(select MIN(join_date) from bookstore.customers)");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL" << endl;
		}
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::OldestBook()	//3
{
	mysql_query(connect, "Select * from bookstore.books WHERE arrival_date LIKE (select MIN(arrival_date) from bookstore.books)");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL" << endl;
		}
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::CurrentOrderList()	//4
{
	mysql_query(connect, "SELECT * FROM bookstore.orders order by date");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL" << endl;
		}
		cout << "\n";
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::BookBoughtMultipleTimes()	//5
{
	string userstring;
	cout << "Enter the name of a book you want to know how many times bought: " << endl;
	getline(cin >> ws, userstring);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT boo.title, count(boo.title) as times_bought from bookstore.transactions as tra INNER JOIN bookstore.books as boo ON  boo.id_books = tra.id_books WHERE boo.title LIKE '%" << userstring << "%' group by title";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)

				{
					cout << row[i] << " | ";
				}
				else
					cout << "NULL" << endl;
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "The book was never bought or not found in the system" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::TopAuthor()	//6
{
	string userdate1;
	string userdate2;
	cout << "Enter the start date of the most read author (FORMAT: YYYY-MM-DD) : " << endl;
	getline(cin >> ws, userdate1);
	cout << "\n";
	cout << "Enter the end date of the most read author (FORMAT: YYYY-MM-DD) : " << endl;
	getline(cin >> ws, userdate2);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT author_name, num_of_readings FROM (SELECT boo.author_name, count(boo.author_name) as num_of_readings, Rank() over (order by count(boo.author_name) desc) as Rnk FROM bookstore.books as boo INNER JOIN bookstore.transactions as tra ON boo.id_books = tra.id_books  WHERE tra.date between '" << userdate1 << "' and '" << userdate2 << "' GROUP BY boo.author_name) as temp_result WHERE Rnk=1;";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
					cout << "NULL" << endl;
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "No books were read by this date range" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::TopCustomers()	//7
{
	mysql_query(connect, "SELECT cus.first_name,cus.last_name,count(cus.id_customers) as books_bought FROM bookstore.customers as cus INNER JOIN bookstore.transactions as tra ON cus.id_customers = tra.id_customers GROUP BY cus.id_customers ORDER BY COUNT(books_bought) DESC LIMIT 3");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL" << endl;
		}
		cout << "\n";
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::TopTranslatedBooks()	//8
{
	mysql_query(connect, "SELECT title, count(title) as num_of_translations FROM (SELECT boo.title, boo.translator_name from bookstore.books as boo WHERE location = 'Store' AND boo.translator_name NOT LIKE 'NULL' OR location = 'Warehouse' AND boo.translator_name NOT LIKE 'NULL' GROUP BY translator_name ORDER BY COUNT(translator_name)) as temp_result GROUP BY title ORDER BY count(title) DESC LIMIT 1");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL" << endl;
		}
		cout << "\n";
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::PurchaseHistory()	//9
{
	string customerfn;
	string customerln;
	cout << "Enter the First Name of the customer: " << endl;
	getline(cin >> ws, customerfn);
	cout << "\n";
	cout << "Enter the Last Name of the customer:  " << endl;
	getline(cin >> ws, customerln);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT  books.title,transactions.date,transactions.total_price  FROM bookstore.transactions INNER JOIN bookstore.books ON bookstore.transactions.id_books=bookstore.books.id_books WHERE id_customers in (SELECT id_customers FROM bookstore.customers WHERE first_name = '" << customerfn << "' AND last_name = '" << customerln << "' )";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
					cout << "NULL" << endl;
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "No customer was found" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::OrdersHistory() //10
{
	string customerfn;
	string customerln;
	cout << "Enter the First Name of the customer: " << endl;
	getline(cin >> ws, customerfn);
	cout << "\n";
	cout << "Enter the Last Name of the customer:  " << endl;
	getline(cin >> ws, customerln);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT books.title, orders.date, orders.status, transactions.payment_status FROM bookstore.orders INNER JOIN bookstore.books ON bookstore.orders.id_books=bookstore.books.id_books INNER JOIN bookstore.transactions ON bookstore.orders.transaction_number=bookstore.transactions.transaction_number WHERE orders.id_customers in (select id_customers FROM bookstore.customers WHERE first_name = '" << customerfn << "' AND last_name = '" << customerln << "') ORDER BY orders.date;";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
					cout << "NULL" << endl;
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "No customer was found or no orders were made by that customer" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::DeliveryCalculator()	//11
{
	int num_fields;
	int num_rows;
	string deliveryid;
	string booksid;
	cout << "\n";
	std::stringstream booklist;
	booklist << "SELECT id_books,title FROM bookstore.books";
	mysql_query(connect, booklist.str().c_str());
	res_set = mysql_store_result(connect);
	num_fields = mysql_num_fields(res_set);
	num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
					cout << "NULL" << endl;
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	cout << "Enter the book IDs you want to calculate delivery price for seperated by commas [example:12647,12648,12650]: " << endl;
	cin >> booksid;
	cout << "\n";
	std::stringstream deliverylist;
	deliverylist << "SELECT * FROM bookstore.delivery";
	mysql_query(connect, deliverylist.str().c_str());
	res_set = mysql_store_result(connect);
	num_fields = mysql_num_fields(res_set);
	num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
					cout << "NULL" << endl;
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	cout << "Enter the delivery ID you want to calculate delivery price for: " << endl;
	cin >> deliveryid;
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT ((SELECT ROUND(sum(weight),2) as total_weight FROM bookstore.books WHERE id_books in (" << booksid << "))* (SELECT price_per_kg FROM bookstore.delivery WHERE id_delivery = '" << deliveryid << "')) as calculated_price";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	num_fields = mysql_num_fields(res_set);
	num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
				{
					cout << "NULL" << endl;
					cout << "No valid data was entered by the user" << endl;
				}
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "No valid data was entered by the user" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::CustomerOrderSplit()	//12
{
	string customerfn;
	string customerln;
	cout << "Enter the First Name of the customer: " << endl;
	getline(cin >> ws, customerfn);
	cout << "\n";
	cout << "Enter the Last Name of the customer:  " << endl;
	getline(cin >> ws, customerln);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT books.title, tb1.total_price, delivery.company, delivery.delivery_type, tb1.shipment_address, tb1.tracking_number, tb1.delivery_status, tb1.transaction_number  FROM bookstore.transactions tb1 INNER JOIN bookstore.books ON tb1.id_books=bookstore.books.id_books INNER JOIN bookstore.delivery ON tb1.id_delivery=bookstore.delivery.id_delivery JOIN bookstore.transactions tb2 ON tb1.transaction_number=tb2.transaction_number AND tb1.id_books != tb2.id_books AND tb1.id_delivery != tb2.id_delivery OR tb1.transaction_number=tb2.transaction_number AND tb1.id_books != tb2.id_books AND tb1.shipment_address != tb2.shipment_address WHERE tb1.id_customers in (SELECT id_customers FROM bookstore.customers WHERE first_name = '" << customerfn << "' AND last_name = '" << customerln << "')";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)

				{
					cout << row[i] << " | ";
				}
				else
					cout << "NULL" << endl;
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "No customer was found or no orders were ever splitted by this customer" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::DeliveryStatus()	//13
{
	string userstring;
	cout << "Enter your Transaction ID to get your delivery status: " << endl;
	getline(cin >> ws, userstring);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT customers.first_name,customers.last_name,books.title,transactions.delivery_status FROM bookstore.transactions INNER JOIN bookstore.books ON bookstore.books.id_books=bookstore.transactions.id_books INNER JOIN bookstore.customers ON bookstore.transactions.id_customers=bookstore.customers.id_customers WHERE transactions.id_transactions = '" << userstring << "'";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
					cout << "NULL" << endl;
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "Transaction ID " << userstring << " was not found in the system." << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::XpressDeliveriesSum()	//14
{
	string userdate1;
	string userdate2;
	cout << "Enter the year (FORMAT: YYYY) : " << endl;
	getline(cin >> ws, userdate1);
	cout << "\n";
	cout << "Enter the month (FORMAT: MM) : " << endl;
	getline(cin >> ws, userdate2);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT ROUND(SUM(delivery_price),2) AS Xpress_Delivery_Price FROM bookstore.transactions WHERE YEAR(date) = " << userdate1 << " AND MONTH(date) = " << userdate2 << " AND id_delivery in (5,6)";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
				{
					cout << "NULL |" << endl;
					cout << "No deliveries were made by Xpress on that date or date is invalid" << endl;
				}
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "The date that was given is invalid" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::BitSum()	//15
{
	string userdate1;
	string userdate2;
	cout << "Enter the year (FORMAT: YYYY) : " << endl;
	getline(cin >> ws, userdate1);
	cout << "\n";
	cout << "Enter the month (FORMAT: MM) : " << endl;
	getline(cin >> ws, userdate2);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT ROUND(SUM(total_price),2) AS BitPayment FROM bookstore.transactions WHERE YEAR(date) = " << userdate1 << " AND MONTH(date) = " << userdate2 << " AND payment_type = 'bit'";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
				{
					cout << "NULL |" << endl;
					cout << "No payments were made with Bit on that date or date is invalid" << endl;
				}
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "The date that was given is invalid" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::YearlyProfitTransactions()	//16
{
	mysql_query(connect, "SELECT * FROM bookstore.transactions WHERE books_price > (Select AVG(books_price) From bookstore.transactions WHERE date >= DATE_SUB(NOW(),INTERVAL 1 YEAR)) AND date >= DATE_SUB(NOW(),INTERVAL 1 YEAR)");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL";
		}
		cout << "\n";
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::DeliveryCount()	//17
{
	mysql_query(connect, "Select SUM(id_delivery in (2,3,4)) AS 'Israel Post', SUM(id_delivery in (5,6)) AS 'Xpress' FROM bookstore.transactions WHERE date >= DATE_SUB(NOW(),INTERVAL 1 YEAR)");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL";
		}
		cout << "\n";
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::DifferentEditionsDelivery()	//18
{
	mysql_query(connect, "SELECT boo1.title,boo1.id_books,boo1.translator_name,boo1.publisher_name,boo1.year_of_distribution,tra.total_price, tra.shipment_address, tra.tracking_number,tra.delivery_status, tra.transaction_number FROM bookstore.transactions as tra JOIN bookstore.books boo1 ON tra.id_books = boo1.id_books  JOIN bookstore.books boo2 ON boo1.title=boo2.title AND boo1.translator_name != boo2.translator_name OR boo1.title=boo2.title AND boo1.publisher_name != boo2.publisher_name OR boo1.title=boo2.title AND boo1.year_of_distribution != boo2.year_of_distribution WHERE tra.id_delivery !=1 AND transaction_number in (select transaction_number from bookstore.transactions group by transaction_number having count(*) > 1)");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL";
		}
		cout << "\n";
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::CustomerDidntPurchaseTwoYears()	//19
{
	mysql_query(connect, "SELECT tb1.date as last_purchase_date,cs.first_name,cs.last_name,cs.mobile_number from transactions tb1 INNER JOIN bookstore.customers cs ON tb1.id_customers=cs.id_customers where tb1.payment_status = 'Payed' AND tb1.date < DATE_SUB(NOW(), INTERVAL 2 YEAR) AND tb1.id_customers not in (select id_customers from bookstore.transactions where date > DATE_SUB(NOW(), INTERVAL 2 YEAR) group by id_customers)");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL";
		}
		cout << "\n";
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::LastContactTwoWeeks()	//20
{
	mysql_query(connect, "SELECT cus.first_name,cus.last_name,cus.mobile_number,ord.id_orders,ord.last_contact,boo.title,boo.location,tra.payment_status FROM bookstore.orders ord INNER JOIN bookstore.transactions tra ON ord.id_orders = tra.id_orders AND tra.payment_status = 'Not Payed' INNER JOIN bookstore.books boo ON ord.id_books = boo.id_books AND boo.location in ('Store','Warehouseï') INNER JOIN bookstore.customers cus ON ord.id_customers = cus.id_customers WHERE ord.last_contact < DATE_SUB(NOW(), INTERVAL 14 DAY) AND ord.status = 'Waiting For Pickup' ;");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL";
		}
		cout << "\n";
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::WarehouseMonthlyCut()	//21
{
	mysql_query(connect, "SELECT payment_date, @b := cc+@b as books_in_warehouse FROM (SELECT sto.payment_date, count(boo.location) as cc, @b:=0 as var from bookstore.store_payments as sto LEFT JOIN (SELECT * FROM bookstore.books WHERE location = 'warehouse') as boo on YEAR(boo.arrival_date) LIKE YEAR(sto.payment_date) AND MONTH(boo.arrival_date) LIKE MONTH(sto.payment_date)  group by sto.payment_date,location order by sto.payment_date) as temp_table");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL";

		}
		cout << "\n";
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::StorePurchasesBetween()	//22
{
	string userdate1;
	string userdate2;
	cout << "Enter the start date of the store purchases (FORMAT: YYYY-MM-DD) : " << endl;
	getline(cin >> ws, userdate1);
	cout << "\n";
	cout << "Enter the end date of the store purchases (FORMAT: YYYY-MM-DD) : " << endl;
	getline(cin >> ws, userdate2);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT count(id_store_purchases)  as books_bought, sum(price) as price_payed FROM bookstore.store_purchases WHERE date between '" << userdate1 << "' and '" << userdate2 << "'";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
				{
					cout << "NULL" << endl;
					cout << "No books were bought by the store at this date range" << endl;
				}
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "No books were bought by the store at this date range" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::StoreProfitByMonth()	//23
{
	string userdate1;
	string userdate2;
	cout << "Enter the year (FORMAT: YYYY) : " << endl;
	getline(cin >> ws, userdate1);
	cout << "\n";
	cout << "Enter the month (FORMAT: MM) : " << endl;
	getline(cin >> ws, userdate2);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT (SELECT ROUND(sum(tra.total_price),2) FROM bookstore.transactions tra where YEAR(tra.date) = '" << userdate1 << "' AND MONTH(tra.date) = '" << userdate2 << "') - (SELECT ROUND(sum(pur.price),2) FROM bookstore.store_purchases pur where YEAR(pur.date) = '" << userdate1 << "' AND MONTH(pur.date) = '" << userdate2 << "') as profit";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
				{
					cout << "NULL |" << endl;
					cout << "No profit was made on that date or date is invalid" << endl;
				}
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "The date that was given is invalid" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::AVGYearTraMonthlyCut()	//24
{
	mysql_query(connect, "SELECT YEAR(payment_date) as year, count(tra.id_transactions) as transaction_count, ROUND(count(tra.id_transactions)/12,3) as yearly_avrage_monthly_cut from bookstore.store_payments as sto LEFT JOIN (SELECT * FROM bookstore.transactions) as tra on YEAR(tra.date) LIKE YEAR(sto.payment_date) and MONTH(tra.date) LIKE MONTH(sto.payment_date) group by YEAR(sto.payment_date)");
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	while ((field = mysql_fetch_field(res_set)))
	{
		cout << field->name << " | ";
	}
	cout << "\n\n";
	while ((row = mysql_fetch_row(res_set)))
	{
		for (int i = 0; i < num_fields; i++)
		{
			if (row[i] != NULL)
			{
				cout << row[i] << " | ";
			}
			else
				cout << "NULL";

		}
		cout << "\n";
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::EmployeeSalaryMonth()	//25
{
	string employeename;
	string userdate1;
	string userdate2;
	cout << "Enter the full name of the employee : " << endl;
	getline(cin >> ws, employeename);
	cout << "\n";
	cout << "Enter the year (FORMAT: YYYY) : " << endl;
	getline(cin >> ws, userdate1);
	cout << "\n";
	cout << "Enter the month (FORMAT: MM) : " << endl;
	getline(cin >> ws, userdate2);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT emp.full_name, sal.salary_sum, sal.salary_date FROM bookstore.employees_salary sal INNER JOIN bookstore.employees emp ON sal.id_employees = emp.id_employees WHERE month(sal.salary_date) = '" << userdate2 << "' AND year(sal.salary_date) = '" << userdate1 << "' AND emp.full_name = '" << employeename << "'";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
				{
					cout << "NULL |" << endl;
				}
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "No salary was found on that date for " << employeename << " or date is invalid" << endl;
	}
	cout << "\n\n";
	system("pause");
}
void MySQL::EmployeeSoldMost()	//26
{
	string userdate1;
	string userdate2;
	cout << "Enter the year (FORMAT: YYYY) : " << endl;
	getline(cin >> ws, userdate1);
	cout << "\n";
	cout << "Enter the month (FORMAT: MM) : " << endl;
	getline(cin >> ws, userdate2);
	cout << "\n";
	std::stringstream ss;
	ss << "SELECT full_name, books_sold FROM (SELECT emp.full_name,count(tra.id_employees) as books_sold, Rank() over (order by count(tra.id_employees)) as rnk FROM bookstore.transactions tra INNER JOIN bookstore.employees emp ON tra.id_employees=emp.id_employees WHERE year(tra.date) = '" << userdate1 << "' AND month(tra.date) = '" << userdate2 << "' group by tra.id_employees order by count(tra.id_employees)) as temp_table WHERE rnk=1";
	mysql_query(connect, ss.str().c_str());
	res_set = mysql_store_result(connect);
	int num_fields = mysql_num_fields(res_set);
	int num_rows = res_set->row_count;
	if (num_rows > 0)
	{
		while ((field = mysql_fetch_field(res_set)))
		{
			cout << field->name << " | ";
		}
		cout << "\n\n";
		while ((row = mysql_fetch_row(res_set)))
		{
			for (int i = 0; i < num_fields; i++)
			{
				if (row[i] != NULL)
				{
					cout << row[i] << " | ";
				}
				else
				{
					cout << "NULL |" << endl;
				}
			}
			cout << "\n";
		}
		cout << "\n\n";
	}
	else
	{
		cout << "No sells were made on that date or date is invalid" << endl;
	}
	cout << "\n\n";
	system("pause");
}
/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: ~MySQL()
 * Description:  Destructor of MySQL class for closing mysql
 *               connection and clearing the result var
 *--------------------------------------------------------------------
 */

MySQL :: ~MySQL()
{
	if (res_set != NULL)
		mysql_free_result(res_set);
	mysql_close(connect);
}