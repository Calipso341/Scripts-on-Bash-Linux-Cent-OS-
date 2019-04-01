#! bin/bash



function Menu(){
 
echo -e "\n\n\tTo change owner of file PRESS 1!\n\n\tTo change right for file PRESS 2!\n\n\tTo see what inside file PRESS 3!\n\n\tTo exit PRESS 4!"
}
function ChangeOwner(){
echo -e "\n\tEnter the name of user  which will be new  owner!"
read name
echo -e "\n\tEnter the name of group which new owner belong to!"
read group
echo -e "\n\tEnter the name of file for which owner will be change!"
read file

chown $name:$group -R $file
} 

function ChangeRight(){
echo -e "\n\tEnter name of file for which will be added changes!"
read name
echo -e "\n\tTo add right of reading for all PRESS 1!"
echo -e "\n\tTo dienie right of reading file PRESS 2!"
echo -e "\n\tTo add right of reading and writing for all PRESS3!"
read choice
if (( $choice == 1 ))
then 
chmod a+r $name
fi
if (( $chice == 2 ))
then 
chmod a-x $name
fi
if (( $choice == 3 ))
then
chmod a+rw $name
fi
}


Menu
read choice
if (( $choice == 1 )) 
then 
ChangeOwner
fi
if (( $choice == 2 )) 
then 
ChangeRight
fi


