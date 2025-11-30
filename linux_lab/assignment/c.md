# 🚀 Project :- Hostel Menu and Billing System in C language (Report)

## 🙋‍♂️ Introduction:-
### The Hostel Menu Billing System is a C program designed to automate the calculation of food bills for hostel students. In many hostels, students choose different meal options such as breakfast, lunch, dinner, or snacks, and the total bill must be calculated based on the quantity ordered. Manually calculating these bills can be time-consuming and prone to errors.

### This program provides an efficient and user-friendly way to generate accurate bills. It displays a menu of food items along with their prices and allows the user to select items repeatedly using a loop. The selected items and quantities are processed using a switch-case structure, and the total amount is updated accordingly. When the user chooses to generate the bill, the program calculates the total cost, adds GST at 5%, and displays a detailed bill receipt. The system also includes an exit option to safely terminate the program.

### Overall, this program demonstrates the use of loops, conditional statements, and arithmetic operations in C to build a simple but practical billing application.

## 🤔 Question :-
### Q. Write a C program to create a Hostel Menu Billing System using a loop and switch-case.Your program must:

#### 1. Display a menu with the following items and their prices:

   • Breakfast – Rs. 40

   • Lunch – Rs. 70

   • Dinner – Rs. 60

   • Extra Snack – Rs. 30

#### 2. Allow the user to:

   • Select an item

   • Enter the quantity

   • Add the cost to the running total

#### 3. When the user selects option 5 (Generate Bill), the program should:

   • Calculate the total amount

   • Calculate GST at 5%

   • Display the final grand total

#### 4. When the user selects 6 (Exit), the program should terminate.

   Use :-

• While(1) for continuous ordering

• Switch-case for menu handling

• Proper printf formatting for the final bill

## 👨🏻‍💻 Code:-

```
#include <stdio.h>

int main() {
    int choice, qty;
    float total = 0;

    printf("====================================\n");
    printf("        HOSTEL MENU BILLING         \n");
    printf("====================================\n");

    while(1) {
        printf("\n1. Breakfast (Rs.40)\n");
        printf("2. Lunch (Rs.70)\n");
        printf("3. Dinner (Rs.60)\n");
        printf("4. Extra Snack (Rs.30)\n");
        printf("5. Generate Bill\n");
        printf("6. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        if(choice >=1 && choice <=4) {
            printf("Enter quantity: ");
            scanf("%d", &qty);
        }

        switch(choice) {
            case 1: total += 40 * qty; break;
            case 2: total += 70 * qty; break;
            case 3: total += 60 * qty; break;
            case 4: total += 30 * qty; break;
            case 5:
                printf("\n=========== BILL RECEIPT ===========\n");
                printf("Total Amount: Rs. %.2f\n", total);
                printf("GST (5%%): Rs. %.2f\n", total * 0.05);
                printf("Grand Total: Rs. %.2f\n", total + (total * 0.05));
                printf("====================================\n");
                break;
            case 6:
                printf("Thank you! Visit again.\n");
                return 0;
            default:
                printf("Invalid choice, try again!\n");
        }
    }

    return 0;
}
```
#  🎯 Output Image:-

![alt text](<../project/Screenshot 2025-12-01 011654.png>)


# 🧠 What It Does ?

### When the program starts, it displays a title and then repeatedly shows a menu containing six options—Breakfast, Lunch, Dinner, Extra Snack, Generate Bill, and Exit. The user selects an item by entering its number. For any food item (options 1 to 4), the program asks for the quantity and adds the cost of that item to the running total.

### Each food item has a fixed price:

#### • Breakfast: Rs. 40

#### • Lunch: Rs. 70

#### • Dinner: Rs. 60

#### • Extra Snack: Rs. 30

#### The switch-case statement updates the total cost based on the user’s choice and the quantity entered.

#### When the user selects option 5 (Generate Bill), the program prints a bill receipt showing:

#### • Total Amount

#### • GST calculated at 5%

#### • Grand Total (Total Amount + GST)

#### The user can keep adding items until they choose to generate the bill or exit. When option 6 (Exit) is selected, the program displays a thank-you message and ends.

#  😥  Challenges Faced  :-

### 1. Handling Continuous User Input:
#### Designing the program to repeatedly accept menu choices until the user decides to exit required the use of an infinite loop (```while(1)```). Ensuring the loop works correctly without causing unwanted infinite execution was a challenge.

### 2. Validating User Choices:
#### The program needed to correctly handle valid and invalid menu inputs. Using conditional statements and the ```default``` case in the switch-case block helped manage incorrect inputs, but ensuring the program did not crash due to unexpected values was a key challenge.

### 3. Managing Quantity Input Correctly:
#### Since the quantity must only be entered when the user selects a food item (choices 1–4), implementing this logic required careful use of an ```if``` condition. Entering ```qty`` at the wrong moment could lead to wrong total calculations, so proper control flow was necessary.

### 4. Avoiding Errors in Total Calculation:
#### Each menu item has a different price, and calculating the total correctly for multiple items required careful handling of variables. Small mistakes (like not updating the total or multiplying by the wrong value) could produce incorrect bills.

### 5. Calculating GST Accurately:
#### Adding GST at 5% required proper floating-point arithmetic. Ensuring correct precision (two decimal places) in the output was important to make the bill look accurate and professional.

### 6. Maintaining Clear Output Formatting:
#### Creating a neat bill receipt with proper spacing, alignment, and easy-to-read formatting required multiple print statements. Maintaining readability is important in billing systems.

### 7. Ensuring Smooth Program Exit:
#### The “Exit” option had to terminate the loop and stop the program without errors. Using return 0 inside the switch case needed careful placement to ensure the loop breaks correctly.

# 💡 Solutions to the above challenges :-

### 1. Handling Continuous User Input:
#### To manage repeated operations, an infinite loop (```while(1)```) was used. Proper exit conditions were added through the Exit (6) option, ensuring the loop breaks safely using ```return 0```.

### 2. Validating User Choices:
#### The use of a ```switch(choice)``` structure along with a ```default ```case ensures that invalid inputs are caught. When an incorrect number is entered, the program displays an error message and continues without crashing.

### 3. Managing Quantity Input Correctly:
#### An ```if(choice >= 1 && choice <= 4)``` check was added to ensure quantities are asked only when the user selects a food item. This prevents incorrect or unnecessary quantity entries, keeping the total calculation accurate.

### 4. Avoiding Errors in Total Calculation:
#### Each case in the switch block multiplies the item price by quantity and adds it to ```total```. This structured approach ensures that every item updates the bill correctly, even when multiple menu items are selected.

### 5. Calculating GST Accurately:
#### Floating-point arithmetic was used (type ```float```) to correctly calculate GST at 5%. The output uses ```%.2f``` formatting, which ensures the bill shows values up to two decimal places for accuracy and readability.

### 6. Maintaining Clear Output Formatting:
#### Proper use of ```printf``` with lines, headings, and spacing makes the bill easy to read. Separators like ```"===================================="``` help structure the display cleanly.

### 7. Ensuring Smooth Program Exit:
#### The exit option uses ```return 0``` inside the switch-case to terminate the program immediately. This ensures clean closure without executing any further loop iterations.

# 💭 Future Scope / Improvements :-

### 1. Add Item-Wise Bill Details:
#### Currently, the program only shows the final total. In future versions, it can store and display a list of each item ordered, along with quantities and prices, just like a real bill receipt.

### 2.Use of Arrays or Structures:
#### The program can be improved by using arrays or structures to store item names, prices, and quantities. This will make the program easier to modify and expand in the future.

### 3. Implement User Authentication:
#### A login system for hostel staff or students can be added to make the billing system more secure and personalized.

### 4. Add Discount or Coupon Options:
#### Features like student discounts, festive offers, or promo codes can be implemented for a more realistic billing system.

### 5. Multiple Customer Billing:
#### Instead of one customer per run, the system can be expanded to generate bills for multiple users in a single session.

### 6. Save Bills to a File
#### The final generated bill can be saved in a text file for record-keeping or printing purposes. This adds usefulness for real hostel management.

### 7. Graphical User Interface (GUI):
#### In future upgrades, the program could be converted into a GUI application using libraries like GTK or by building a desktop/mobile app.

### 8. Error Handling and Input Validation:
#### Additional checks can be added to prevent negative quantities, non-numeric input, or extremely large values.

### 9. Add More Menu Categories:
#### The menu can be expanded to include beverages, special meals, desserts, or weekly meal plans.

### 10. Implement Payment Modes:
#### Support for payment methods like cash, UPI, or card can be added to make the system more realistic.

# 📋 Conclusion :-

#### The Hostel Menu Billing System developed in C successfully demonstrates how basic programming concepts can be used to create a functional and user-friendly application. The program allows users to select food items, enter quantities, calculate totals, and generate a final bill with GST, making it useful in real hostel environments

#### By using loops, conditional statements, and switch-case structures, the program efficiently handles multiple inputs and ensures accurate billing. Although the current version is simple, it provides a strong foundation for further enhancements such as item-wise billing, file storage, discounts, and user authentication.

#### Overall, this project highlights the practical application of C programming in solving everyday problems and serves as a good learning experience for understanding control structures, input handling, and arithmetic operations in a real-world context.



##                                     THANK YOU🙏