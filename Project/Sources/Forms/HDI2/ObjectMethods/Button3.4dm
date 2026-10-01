
If (bTrace)
	TRACE:C157
End if 

If (selected.length=1)
	WP SET ATTRIBUTES:C1342(selected[0]; wk column count:K81:199; 1)
Else 
	ALERT:C41(Localized string("AlertSelectSection"))
End if 