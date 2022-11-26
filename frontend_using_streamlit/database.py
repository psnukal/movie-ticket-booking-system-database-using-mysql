import mysql.connector
mydb = mysql.connector.connect(host="localhost", user="root", password="", database="movie_booking_system")
c = mydb.cursor()


def create_table():
    c.execute('CREATE TABLE IF NOT EXISTS USERS(User_ID TEXT, First_name TEXT, Last_Name TEXT, Email_ID TEXT, Age TEXT, Phone_Number TEXT)')


def add_data(User_ID, First_Name, Last_Name, Email_ID, Age, Phone_Number):
    c.execute('INSERT INTO USERS(User_ID, First_Name, Last_Name, Email_ID, Age, Phone_Number) '
              'VALUES (%s,%s,%s,%s,%s,%s)',
              (User_ID, First_Name, Last_Name, Email_ID, Age, Phone_Number))
    mydb.commit()


def view_all_data():
    c.execute('SELECT * FROM USERS')
    data = c.fetchall()
    return data


def view_only_users_names():
    c.execute('SELECT User_ID FROM USERS')
    data = c.fetchall()
    return data


def get_users(User_ID):
    c.execute('SELECT * FROM USERS WHERE User_ID="{}"'.format(User_ID))
    data = c.fetchall()
    return data


def edit_user_data(new_User_ID, new_First_Name, new_Last_Name, new_Email_ID, new_Age, new_Phone_Number,
                    User_ID, First_Name, Last_Name, Email_ID, Age, Phone_Number):
    c.execute("UPDATE USERS SET User_ID=%s, First_Name=%s, Last_Name=%s, Email_ID=%s, Age=%s, Phone_Number=%s "
              "WHERE User_ID=%s and First_Name=%s and Last_Name=%s and Email_ID=%s and Age=%s and Phone_Number=%s",
               (new_User_ID, new_First_Name, new_Last_Name, new_Email_ID, new_Age, new_Phone_Number,
               User_ID, First_Name, Last_Name, Email_ID, Age, Phone_Number))
    mydb.commit()
    #data = c.fetchall()
    #return data



def delete_data(User_ID):
    c.execute('DELETE FROM USERS WHERE User_ID="{}"'.format(User_ID))


def get_sql(statement):
    c.execute(statement)
    data = c.fetchall()
    return data
