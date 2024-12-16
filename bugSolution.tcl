proc get_data {filename} {
  set f [open $filename r]
  if {$f == -1} {
    #Improved error handling: use catch to get detailed error message
    catch {open $filename r} errMsg
    error "Could not open file: $filename \nError: $errMsg"
  }
  set data [read $f]
  close $f
  return $data
}

catch {set data [get_data data.txt]} errMsg

if {[string length $errMsg] > 0} { 
 puts "Error: $errMsg"
} else {
 puts $data
} 