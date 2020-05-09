# PowerShell Loops
# Ctrl-J in ISE is your friend!


# for loop
# useful for counting
for ($i = 1; $i -lt 99; $i++)
{ 
    
}


# ForEach-Object loop
# useful for iterating a collection of data
foreach ($item in $collection)
{
    
}
# $collection | ForEach-Object { }
# ^ cleaner way to pass variable


# while loop
# simple loop, maybe increment with something like $x++ or $x-- to end
while ($x -gt 0)
{
    
}


# do / while loop
# keep doing WHILE evaluation is true
do
{
    
}
while ($x -gt 0)


# do / until loop
# keep doing UNTIL evaluation is true
do
{
    
}
until ($x -gt 0)
