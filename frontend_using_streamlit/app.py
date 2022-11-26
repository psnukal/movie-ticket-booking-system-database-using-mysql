import streamlit as st
from create import create
from database import create_table
from delete import delete
from read import read
from update import update
from sql_stat import stat


def main():
    st.title("Movie_Booking_System")
    menu = ["Add", "View", "Edit", "Remove", "SQL_Statement"]
    choice = st.sidebar.selectbox("Menu", menu)
    create_table()
    if choice == "Add":
        st.subheader("Enter User Details:")
        create()
    elif choice == "View":
        st.subheader("View created Users")
        read()
    elif choice == "Edit":
        st.subheader("Update created Users")
        update() 
    elif choice == "Remove":
        st.subheader("Delete created Users")
        delete()
    elif choice == "SQL_Statement":
        st.subheader("Enter the SQL Command")
        stat()
    else:
        st.subheader("About Users")


if __name__ == main():
    main()