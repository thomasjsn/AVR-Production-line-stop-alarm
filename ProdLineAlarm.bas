'--------------------------------------------------------------
'                   Thomas Jensen | stdout.no
'--------------------------------------------------------------
'  file: PRODUCTION_ALARM.BAS
'  date: 30/01/2004
'--------------------------------------------------------------

$regfile = "2313def.dat"
$crystal = 4000000
$baud = 9600
Config Portd = Output
Config Portb = Input
Dim Inn1 As Integer
Dim Inn2 As Integer
Dim Inn3 As Integer
Dim Inn4 As Integer
Dim Inn5 As Integer
Dim Inn6 As Integer
Dim Inn7 As Integer
Dim Inn8 As Integer
Inn1 = 0
Inn2 = 0
Inn3 = 0
Inn4 = 0
Inn5 = 0
Inn6 = 0
Inn7 = 0
Inn8 = 0
Portd.4 = 1
Waitms 500
Portd = 0

Main:
If Pinb.0 = 1 And Inn1 = 0 Then
   Portd.4 = 1
   Inn1 = 70
   Waitms 1000
   Portd.4 = 0
   End If
If Pinb.1 = 1 And Inn2 = 0 Then
   Portd.4 = 1
   Inn2 = 70
   Waitms 1000
   Portd.4 = 0
   End If
If Pinb.2 = 1 And Inn3 = 0 Then
   Portd.4 = 1
   Inn3 = 70
   Waitms 1000
   Portd.4 = 0
   End If
If Pinb.3 = 1 And Inn4 = 0 Then
   Portd.4 = 1
   Inn4 = 70
   Waitms 1000
   Portd.4 = 0
   End If
If Pinb.4 = 1 And Inn5 = 0 Then
   Portd.4 = 1
   Inn5 = 70
   Waitms 1000
   Portd.4 = 0
   End If
If Pinb.5 = 1 And Inn6 = 0 Then
   Portd.4 = 1
   Inn6 = 70
   Waitms 1000
   Portd.4 = 0
   End If
If Pinb.6 = 1 And Inn7 = 0 Then
   Portd.4 = 1
   Inn7 = 70
   Waitms 1000
   Portd.4 = 0
   End If
If Pinb.7 = 1 And Inn8 = 0 Then
   Portd.4 = 1
   Inn8 = 70
   Waitms 1000
   Portd.4 = 0
   End If
If Pinb.0 = 1 Then Inn1 = 70
If Pinb.1 = 1 Then Inn2 = 70
If Pinb.2 = 1 Then Inn3 = 70
If Pinb.3 = 1 Then Inn4 = 70
If Pinb.4 = 1 Then Inn5 = 70
If Pinb.5 = 1 Then Inn6 = 70
If Pinb.6 = 1 Then Inn7 = 70
If Pinb.7 = 1 Then Inn8 = 70
If Inn1 > 0 Then Inn1 = Inn1 - 1
If Inn2 > 0 Then Inn2 = Inn2 - 1
If Inn3 > 0 Then Inn3 = Inn3 - 1
If Inn4 > 0 Then Inn4 = Inn4 - 1
If Inn5 > 0 Then Inn5 = Inn5 - 1
If Inn6 > 0 Then Inn6 = Inn6 - 1
If Inn7 > 0 Then Inn7 = Inn7 - 1
If Inn8 > 0 Then Inn8 = Inn8 - 1
Waitms 100
Goto Main
End