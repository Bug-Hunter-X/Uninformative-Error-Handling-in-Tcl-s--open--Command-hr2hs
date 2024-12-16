proc get_data {filename} {
  set f [open $filename r]
  if {$f == -1} {
    error "Could not open file: $filename"
  }
  set data [read $f]
  close $f
  return $data
}

set data [get_data data.txt]
puts $data