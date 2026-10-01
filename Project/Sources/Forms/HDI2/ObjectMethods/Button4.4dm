
If (bTrace)
	TRACE:C157
End if 

If (selected.length=1)
	WP SET ATTRIBUTES:C1342(selected[0]; "pageMargin"; "2.5cm")
Else 
	ALERT:C41("Please, select a section in the listbox.")
End if 