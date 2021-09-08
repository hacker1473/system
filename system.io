a = gets.chomp
puts #{a}
File.extname
a.modulo(2)
arr = Array["nag", "Vijay"]
map = Hash["a" => 12, "b" => 23, "c" => 40]

11. 
gets stdin i
set res 1
while {$i > 0} {
    set res [expr $res*$i]
    set i [expr $i - 1]
}
puts $res

12.
gets stdin i 
set j 1
while {$j <= 10} {
    puts -nonewline $i
    puts " X ${j}"
    set j [expr ($j + 1)]
}

13.
set arr {nag, Vijay}
#puts [lsort $arr]
set a [string index $arr 2]
set b [string index $arr 1]
puts [string compare $a $b]
puts [lsort -command mycompare $yourlist]

14.Write a TCL script to (i) create a list   (ii)append elements to the list (iii)Traverse the list  (iv)Concatenate the list
PROGRAM:
puts "creating a list:"
set flower  [list rosy lily]
puts $flower

puts "appending a list:"
lappend flower tulip
puts $flower

puts "traversing a list:"
foreach  i  $flower {
	puts $i
}
puts "concatenating a list:"
set  flow2 [list lotus]
set res [concat $flower $flow2]
puts $res

15.write a tcl script to comparing the file modified time
PROGRAM:
set tclfiles  [glob *.tcl]
puts "Name - data of last modification:"
foreach f $tclfiles  {
	puts "$f - [clock format [file mtime $f] -format %x ]"
	puts "$f - [clock format [file atime $f] -format %x ]"
}

16. write a tcl script to copy a file and translate into native format

proc f_Copy {src dest}  {
	if [file isdirectory $src]  {
	file mkdir $dest
	foreach f [global [file join $src *]]  {
	f_copy $f [file join $dest [file tail $f]]
	}
	return
}
if [file isdirectory $dest]  {
	set dest [file join $dest [file tail $src]]
}

set in [open $src r]
set out [open $dest w+]
puts $out [read $in]
close $out;
close $in;
}




19.a.
$string = "Tea is good with milk.";
$string =~ s/tea/coffee/;
print $string;

19.b.
use Email::Valid;
my $email= <stdin>;
if (my $address = Email::Valid->address($email))
{
	print ( " $address is valid");
}
else
{
	print ( " '$address' is not valid");
}


20. 
$word = <stdin>;
print scalar reverse($word);


