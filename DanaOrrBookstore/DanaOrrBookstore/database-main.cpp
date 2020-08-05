#include "database.h"

int main() {
	
	bool start = true;
	bool IsAdmin = true;
	while (start)
	{


		char user[30], pass[30];
		cout << "user name: ";
		cin >> user;
		cout << "password: ";
		cin >> pass;


		if (strcmp(user, USER) == 0 && strcmp(pass, PASSWORD) == 0)
		{
			IsAdmin = false;
			cout << "\nLOGIN  WORKER SUCCESS.\n";
			start = false;
		}
		else {

			if (strcmp(user, USERADMIN) == 0 && strcmp(pass, PASSWORDADMIN) == 0) {
				printf("\nLOGIN  ADMIN SUCCESS.\n");
				IsAdmin = true;
				start = false;
			}

			else
			{
				printf("\nLOGIN FAILED.\n");

			}
		}

	}
	
	
	
	
	
	int choice;
	int end = 0;
	while (end == 0)
	{
		MySQL Mysql(IsAdmin);
		system("cls");
		cout << "\n  \n*"
			<< " Welcome to our Book Store. Please choose one of the following: \n\n"
			<< " 1) Is Book X in stock? \n 2) Who is the oldest customer? \n"
			<< " 3) What is the oldest book? \n 4) Fetch current order list. \n"
			<< " 5) How many copies of Book Y were sold by the store? \n 6) Who is the most read writer in the middle of dates X to Y. \n 7) List of the 3 customers who have purchased the most books over the years. \n"
			<< " 8) Who is the book with the largest number of translations currently in stock? \n 9) Customer X Purchase History: What books did he purchase, on what dates and what price did he pay for each book? \n 10) Regarding customer X: orders history.\n"
			<< " 11) Shipping cost calculator. \n 12) Has customer X ever splitted a purchase for multiple shipments and if so What are the shipping data? \n 13) What is the current status of a particular shipment? \n"
			<< " 14) How many shipments were made by Xpress in a particular month? \n 15) The total money transferred to the store account via Bit app in a specific month. \n 16) What are the transactions that have been made during the last 12 months and which have yielded greater profit than the average transactions profit in these 12 months.\n"
			<< " 17) How many shipments have been made in the last 12 months by Israel Post and Xpress. \n 18) Data on all the shipments were ever made and includes at least 2 editions of the same book. \n"
			<< " 19) Data on all customers who have previously purchased, at any time, at least one book from the store and who have not made any purchase during the last 24 months. \n 20) List of customers who placed in orders, the books they ordered arrived at the store, the store contacted them to inform them of the availability of the book yet the book was not purchased after 14 days from the last contact. \n"
			<< " 21)  The number of books in the warehouse in a monthly cut. \n 22) How many books did the store purchase between dates and what was the total price for purchasing them. \n 23) The store's profit from sales in a particular month \n"
			<< " 24) Annual average monthly transactions \n 25) The salary of a specific employee in a given month. \n 26) What employee has the highest number of transactions in a specific month? \n 27) Quit the program. \n"
			<< "\nYour Choice:> ";
		cin >> choice;

		cout << "\n";
		if (choice > 0 && choice < 28)
		{
			switch (choice)
			{
			case 1:
				Mysql.BookInStock();
				break;
			case 2:
				Mysql.OldestCustomer();
				break;
			case 3:
				Mysql.OldestBook();
				break;
			case 4:
				Mysql.CurrentOrderList();
				break;
			case 5:
				Mysql.BookBoughtMultipleTimes();
				break;
			case 6:
				Mysql.TopAuthor();
				break;
			case 7:
				Mysql.TopCustomers();
				break;
			case 8:
				Mysql.TopTranslatedBooks();
				break;
			case 9:
				Mysql.PurchaseHistory();
				break;
			case 10:
				Mysql.OrdersHistory();
				break;
			case 11:
				Mysql.DeliveryCalculator();
				break;
			case 12:
				Mysql.CustomerOrderSplit();
				break;
			case 13:
				Mysql.DeliveryStatus();
				break;
			case 14:
				Mysql.XpressDeliveriesSum();
				break;
			case 15:
				Mysql.BitSum();
				break;
			case 16:
				Mysql.YearlyProfitTransactions();
				break;
			case 17:
				Mysql.DeliveryCount();
				break;
			case 18:
				Mysql.DifferentEditionsDelivery();
				break;
			case 19:
				Mysql.CustomerDidntPurchaseTwoYears();
				break;
			case 20:
				Mysql.LastContactTwoWeeks();
				break;
			case 21:
				if (IsAdmin = true)
				{
					Mysql.WarehouseMonthlyCut();
				}
				else
				{
					cout << "\n\nThe user have insufficient privileges to execute this query\n";
					system("pause");
				}
				break;
			case 22:
				Mysql.StorePurchasesBetween();
				break;
			case 23:
				Mysql.StoreProfitByMonth();
				break;
			case 24:
				if (IsAdmin=true)
				{
					Mysql.AVGYearTraMonthlyCut();
				}
				else
				{
					cout << "\n\nThe user have insufficient privileges to execute this query\n";
					system("pause");
				}
				break;
			case 25:
				if (IsAdmin = true)
				{
					Mysql.EmployeeSalaryMonth();
				}
				else
				{
					cout << "\n\nThe user have insufficient privileges to execute this query\n";
					system("pause");
				}
				break;
			case 26:
				if (IsAdmin = true)
				{
					Mysql.EmployeeSoldMost();
				}
				else
				{
					cout << "\n\nThe user have insufficient privileges to execute this query\n";
					system("pause");
				}
				break;
			case 27:
				end = 1;
				break;
			}
		}
		else
		{
			if (cin.fail())
			{
				cin.clear();
				cin.ignore(cin.rdbuf()->in_avail());
			}
			cout << "Wrong input received from the user. ";
			system("pause");
		}
	}
	return 0;
}

