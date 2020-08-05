#include "mysql.h"
#include <iostream>
#include "database-detail.h"
#include <string>
using namespace std;
class MySQL
{
protected:
	/** MySQL connectivity Variables */
	MYSQL *connect;
	MYSQL_RES *res_set;
	MYSQL_ROW row;
	MYSQL_FIELD *field;

	unsigned int i;

public:
	/** MySQL Constructor */
	MySQL(bool IsAdmin);
	/** Methodes to send queries and print out relevant data to the user */
	void BookInStock();
	void OldestCustomer();
	void OldestBook();
	void CurrentOrderList();
	void BookBoughtMultipleTimes();
	void TopAuthor();
	void TopCustomers();
	void TopTranslatedBooks();
	void PurchaseHistory();
	void OrdersHistory();
	void DeliveryCalculator();
	void CustomerOrderSplit();
	void DeliveryStatus();
	void XpressDeliveriesSum();
	void BitSum();
	void YearlyProfitTransactions();
	void DeliveryCount();
	void DifferentEditionsDelivery();
	void CustomerDidntPurchaseTwoYears();
	void LastContactTwoWeeks();
	void WarehouseMonthlyCut();
	void StorePurchasesBetween();
	void StoreProfitByMonth();
	void AVGYearTraMonthlyCut();
	void EmployeeSalaryMonth();
	void EmployeeSoldMost();

	/** MySQL Destructor */
	~MySQL();
};
