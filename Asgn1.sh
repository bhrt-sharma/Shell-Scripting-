
createe(){

	touch add.txt
	echo "\t\t\taddress book created"
	echo all the Records are listed below>add.txt

}

vieww(){

	echo "\t\t\tLet's view the addreess book"
	cat add.txt

}

insertt(){

	echo "\t\t\tAdd a record "
	echo "\t\t\tRegnumber  Name Mobile_Number"
	read reg
	read name
	read mob
	echo $reg $name $mob >> add.txt

	# > creates a new record
	# >> appends the data to the existing record
}

deletee(){

	echo "Enter the sub string of the record which you want to delete"
	read -r sub
	sed -i "/$sub/d" add.txt

}

modifyy(){

	echo "enter the record you want to modidy"
	read mod

	echo "enter the with which you want to replace it "
	read modd

	sed -i -e "s/$mod/$modd/g" add.txt

}

searchh(){

	echo "enter the record you want to search"
	read sear
	grep "$sear" add.txt

	retstat=`echo $?`
	if [ $retstat -eq 1 ]
		then
		echo "No records were found for $sear"
	fi

}

choice=1

while [ $choice -ne 7 ]
do
	echo "\t\t\tMenu"
	echo "\t\t\tEnter 1 to Create AddressBook"
	echo "\t\t\tEnter 2 to view AddressBook"
	echo "\t\t\tEnter 3 to insert in AddressBook"
	echo "\t\t\tEnter 4 to delete from addressBook"
	echo "\t\t\tEnter 5 to modify in AddressBook"
	echo "\t\t\tEnter 6 to search in AddressBook"
	echo "\t\t\tEnter 7 to exit"

	read choice

	case $choice in
		1)createe;;
		2)vieww;;
		3)insertt;;
		4)deletee;;
		5)modifyy;;
		6)searchh;;
		7);;
		*)echo "Invalid Choice"
	esac
done

