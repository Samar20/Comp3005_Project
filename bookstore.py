from os import path
import psycopg2
import pandas as pd


# def viewInventory():

def addNewBooks():

    print("Adding a new book page  \n")

    conn = psycopg2.connect(host="localhost", port = 8080, database="bookstore", user="postgres", password=90210)
    cur = conn.cursor()

    isbn = input("Please enter the ISBN of the book: ")
    name = input("Please enter the Title of the book: ")
    firstname = input("Please enter the Author's First Name: ")
    lastname = input("Please enter the Author's Last Name: ")
    genre = input("Please enter the Genre of the book (Please choose from: Childrens, Fiction, Memoir, Mystery, Nonfiction, Romance, SciFi/Fantasy, Young Adult): ")
    numPages = input("Please enter the number of pages in the book: ")
    rating = 0.00
    price = input("Please enter the Price of the book: ")
    stock = input("Please enter the current number of books in stock: ")
    publisherId = input("Please enter the Publisher id for the book: ")

    ## Checking if Publisher Id exists 
    query = pd.read_sql('SELECT publisher_id FROM publisher', conn)

    if(publisherId in query['publisher_id'].values):

        pubPercent = input("Please enter the percentage of profit the publisher will recieve (in decimel form): ")
        format = input("Please enter the Format of the book: ")

        # try:
        cur.execute(f"""insert into book values ('{isbn}', '{name}', '{firstname}', '{lastname}', '{genre}', '{numPages}', '{rating}', '{price}', '{stock}', '{publisherId}', '{pubPercent}', '{format}')""")

        conn.commit()

        print("\n Successfully added the book to catalogue! \n Returning back to landing page \n")
        owner_screen()

        ## Checking if book is inserted properly    
        # except:
        print("Failed to add new book \n")
        selection = input("Select 0 to try again and 1 to go back to landing page:  ")

        if(selection == 0):
            removeBooks()
        else:
            owner_screen()



    else:
        print("\nThis publisher is not authorised to sell \nCannot add book, returning back to landing page!\n")
        owner_screen()

    


    

    cur.close()
    conn.close()



    


def removeBooks():

    print("\n ** Removing a book page **  \n")

    conn = psycopg2.connect(host="localhost", port = 8080, database="bookstore", user="postgres", password=90210)
    cur = conn.cursor()

    isbn = input("\n Please enter the ISBN of the book to be cleared from the warehouse: ")

    ## Checking if book exists 
    query = pd.read_sql('SELECT ISBN FROM book', conn)
    print(isbn in query['isbn'].values)

    if(isbn in query['isbn'].values):
        try:
            cur.execute(f"""DELETE FROM book WHERE ISBN ='{isbn}'""")
            conn.commit()

            print("\n Successfully removed the book from warehouse! \n Returning back to landing page \n")
            owner_screen()

        ## Checking if book is deleted properly    
        except:
            print("\n Failed to delete book \n")

            selection = input("\n Select 0 to try again and 1 to go back to landing page:  ")

            if(selection == 0):
                removeBooks()
            else:
                owner_screen()
        
    
    else:
        print("\n This book does not exist in current inventory \n Please try again!\n")
        removeBooks()

        
                

    cur.close()
    conn.close()

        






def viewReports():

    conn = psycopg2.connect(host="localhost", port = 8080, database="bookstore", user="postgres", password=90210)
    cur = conn.cursor()

    print("[1] View Sales Vs Expenditure Report \n")
    print("[2] View Sales per Author Report \n")
    print("[3] View Sales per Genre Report \n")
    print("[4] View Sales per Publisher \n")
    print("[0] Go back to landing page \n")

    selection = input("Please select an option (0-4): ")

    print("\n#####################################\n")

    if(selection == "1"):
        query = pd.read_sql('SELECT * FROM salesVsExpen', conn)
        print(query)
        print("\n#####################################\n")

        viewReports()


    if(selection == "2"):
        query = pd.read_sql('SELECT * FROM salesPerAuthor', conn)
        print(query)
        print("\n#####################################\n")

        viewReports()
        
    
    if(selection == "3"):
        query = pd.read_sql('SELECT * FROM salesPerGenre', conn)
        print(query)
        print("\n#####################################\n")

        viewReports()
        

    if(selection == "4"):
        query = pd.read_sql('SELECT * FROM salesPerPublisher', conn)
        print(query)
        print("\n#####################################\n")

        viewReports()

    if(selection == "0"):
        owner_screen()
        

    


    cur.close()
    conn.close()

def viewOrders():

    conn = psycopg2.connect(host="localhost", port = 8080, database="bookstore", user="postgres", password=90210)
    cur = conn.cursor()

    query = pd.read_sql('SELECT * FROM orders', conn)
    print(query)

    owner_screen()

    cur.close()
    conn.close()


# def sendMoney():

def owner_screen():

    cur.close()
    conn.close()

    print("Welcome to the Owners dashboard, *Name*! \n")
    print("[1] View Current Inventory \n")
    print("[2] Add New Books \n")
    print("[3] Remove Books \n")
    print("[4] View Reports \n")
    print("[5] View Orders \n")
    print("[6] Send Money to Publishers \n")
    print("[0] Log Out \n")

    selection = input("Please select an option (0-6): ")

#     if(selection == "0"):
#         logOut()

#     if(selection == "1"):
#         viewInventory()
    
    if(selection == "2"):
        addNewBooks()

    if(selection == "3"):
        removeBooks()


    if(selection == "4"):
        viewReports()


    if(selection == "5"):
        viewOrders()


#     if(selection == "6"):
#         sendMoney()    
    
conn = psycopg2.connect(host="localhost", port = 8080, database="bookstore", user="postgres", password=90210)
cur = conn.cursor()

# cur.execute(open("DDL.sql", "r").read())
# cur.execute(open("DDLInserts.sql", "r").read())
# cur.execute("SELECT * FROM test;")
# cur.fetchone()
# conn.commit() # Make the changes to the database persistent
# cur.execute("SELECT * FROM users;")
# df = DataFrame(cur.fetchall())
# df.columns=[ x.name for x in cur.description ]
# print(df)
# Close communication with the database
# cur.close()
# conn.close()

def landing_page():
    print("\n#####################################\n")
    print("Welcome to the Look Inna Bookstore!\n")
    print("[1] Login")
    print("[2] Create a new account")
    print("[3] Admin\n")
    print("#####################################\n")

def user_login():
    print("\n#####################################\n")
    print("User Login Page")
    username = input("Please enter your username (email): ")
    password = input("Please enter your password: ")
    # cur.execute("Select * from users")
    SQL = "SELECT user_ID FROM users WHERE user_email = '{uname}' AND user_password = '{psswrd}';".format(uname=username, psswrd=password)
    # SQL = (SQL,username)
    print(SQL)
    cur.execute(SQL)
    userID = cur.fetchone()
    # df_pass = DataFrame(cur.fetchall())
    # df_pass.columns=[ x.name for x in cur.description ]
    if(userID == None):
        print("Error with either username or password.")
        selection = input("Please press [1] to try again or press [0] to return to the main menu.")
        if selection=='1':
            user_login()
        else:
            landing_page()
    else:
        print("Success! Logged in as", username, 'with ID', userID)

def create_account():
    print("\n#####################################\n")
    print("Create an Account page.\n Please enter the following information")

    name = input("Name: ")
    user_email = input("Email: ")
    user_phonenumber = input("Phone Number (ex. 111-111-1111: ")
    user_password = input("Password: ")
    street_number = input("Street Number: ")
    street_name = input("Street Name: ")
    city = input("City: ")
    prov = input("Province (Ex. ON): ")
    postal_code = input("Postal Code: ")
    country = input("Country: ")

    SQL = "insert into users (DEFAULT, '{name}', '{user_email}', '{user_phonenumber}', '{user_password}', '{street_number}', '{street_name}', '{city}', '{prov}', '{postal_code}', '{country}', 0);".format(name=name, user_email=user_email, user_phonenumber=user_phonenumber, user_password=user_password, street_number=street_number, street_name=street_name, city=city, prov=prov, postal_code=postal_code, country=country)
    cur.execute(SQL)
    conn.commit()

    SQL = "SELECT user_ID FROM users WHERE user_email = '{uname}' AND user_password = '{psswrd}';".format(uname=username, psswrd=password)
    cur.execute(SQL)
    userID = cur.fetchone()

    if(userID == None):
        print("Error with either username or password.")
    else:
        print("Success! Logged in as", user_email, 'with ID', userID)

def main():
    owner_screen()
    # landing_page()
    # selection = input()
    # print('selection is', selection)
    # if(selection=='1'):
    #     user_login()
    # elif(selection=='2'):
    #     create_account()
    # # elif(selection=='3'):
    # #     owner_login
    # else:
    #     print("ERROR: Invalid choice! Please choose an option from the menu (1-3)")

    

if __name__ == "__main__":
    main()
    # linkDatabase()
