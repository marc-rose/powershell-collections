# PowerShell Statements
# Ctrl-J in ISE is your friend!

# if / [elseif] / else statement
# useful for evaluating
if ($x -lt $y)
{
    
}
else
{
    
}

# switch statement
# more elegant way of doing if/elseif
# can evaluate to multiple values, and perform each command or code block 
switch ($x)
{
    'value1' {}
    {$_ -in 'A','B','C'} {}
    'value3' {}
    Default {}
}

# error/exception handling statement
# try the error, find the error type
# pipe $Error to GM , or pipe to select *
# place the exception name to a catch
try
{
    1/0
}
catch [DivideByZeroException]
{
    Write-Host "Divide by zero exception"
}
catch [System.Net.WebException],[System.Exception]
{
    Write-Host "Other exception"
}
finally
{
    Write-Host "cleaning up ..."
}
