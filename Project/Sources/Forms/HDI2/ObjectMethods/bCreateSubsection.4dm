C_OBJECT:C1216($section; $subsection)

If (bTrace)
	TRACE:C157
End if 

// Retrieve the reference for the first section
$section:=WP Get section:C1581(wpDoc; 1)

// Create the left section - automatically the right section is created
$subsection:=WP New subsection:C1583($section; wk left page:K81:204)