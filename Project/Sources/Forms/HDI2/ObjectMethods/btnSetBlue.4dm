C_OBJECT:C1216($section; $subsection)

If (bTrace)
	TRACE:C157
End if 

// Retrieve the reference on the first section
$section:=WP Get section:C1581(wpDoc; 1)

//Retrieve the reference on the left subsection of the first section
$subsection:=WP Get subsection:C1582($section; wk left page:K81:204)

// If the subsection exists, set the background in blue
If ($subsection#Null:C1517)
	WP SET ATTRIBUTES:C1342($subsection; wk background color:K81:20; "#87CEEB")
Else 
	ALERT:C41("Please, create left and right subsection.")
End if 