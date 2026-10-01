
If (bTrace)
	TRACE:C157
End if 

If (selected.length=1)
	WP SET ATTRIBUTES:C1342(selected[0]; "pageMargin"; "4cm")
Else 
	ALERT:C41(Localized string("AlertSelectSection"))
End if 