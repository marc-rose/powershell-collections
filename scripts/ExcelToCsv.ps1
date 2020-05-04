# This function requires Excel to be installed on the machine running the script
# Place the .xlsx file in the same folder as script

Function ExcelToCSV ($File) {
 
    $excelFile = "$pwd\" + $File + ".xlsx"
# set the file location (current folder) 
    $Excel = New-Object -ComObject Excel.Application
# This code creates a COM object to use Excel features.
    $Excel.Visible = $false
    $Excel.DisplayAlerts = $false
# Excel runs invisible and no displays no alerts while running macros
    $wb = $Excel.Workbooks.Open($excelFile)
    foreach ($ws in $wb.Worksheets)
    {
        $ws.SaveAs("$pwd\" + $File + ".csv", 6) # use this line if one sheet needs to be converted
#       $ws.SaveAs("$pwd\" + $File + "_" + $ws.name + ".csv", 6) # use this line if multiple sheets need to be converted
# SaveAs uses 6 as a second parameter. You need to add it, so the file will be saved as a text form 
# and the application will not try to save formatting.
    }
    $Excel.Quit()
}
$FileName = "Book1"
ExcelToCSV -File "$FileName"
# Should propably change to just pull all xlsx files in folder and convert them
