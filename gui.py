#begin transmission...
#!~/Desktop

from Tkinter import *
import sys
import tkMessageBox

#Create the parent window as "root"
root = Tk()

#Set 'title' and 'size' of window
root.title("ACS Troubleshooter")
root.geometry("400x200")

#Create the label frame to hold the contents of the program
mainWin = LabelFrame(root, text="ACS Troubleshooter", bg="#383838")
mainWin.config(font=('Times New Roman', '14', 'bold'), fg="white")
mainWin.pack(fill="both", expand="yes")

#The contents of the program
info = Label(mainWin, text="Please Login to troubleshoot your PC", bg="#383838")
info.config(font=('Times', '12'), fg="white")
info.pack()



#Make the login button verify user and passw, then display one of two MessageBoxes
def loginCheck( ):
	if user.get() == 'user' and passw.get() == '1234': 
		tkMessageBox.showinfo("Greeting", "Welcome to ACS Troubleshooter!")
	else:
		tkMessageBox.showinfo("Try Again", "Invalid Username and/or Password...")

#make the 'cancel' button close the window
def close():
	root.destroy()

#the actual login form
uname = Label(mainWin, bg="#383838", text="Username")
uname.config(font=("Times"), fg="white")
user = Entry(mainWin, bd =0, bg='#009ACD')
pword = Label(mainWin, bg="#383838", text="Password")
pword.config(font=('Times'), fg="white")
passw = Entry(mainWin, bd =0, bg='#009ACD', show='*')

#Set color, text, and color change on login button
login = Button(mainWin, text="Login", bg="#383838", activebackground="#009ACD", command = loginCheck)
login.config(font=('Times'), fg="white")

#Set color, text, and color change on cancel button
quit = Button(mainWin, text="Cancel", bg="#383838", activebackground="#009ACD", command = root.destroy)
quit.config(font=('Times'), fg="white")

uname.pack( )
user.pack()
pword.pack()
passw.pack()
login.pack(side="left", padx=85, pady=4)
quit.pack(side="left", padx=0, pady=4)






root.mainloop()

