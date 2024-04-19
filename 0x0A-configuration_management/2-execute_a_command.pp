#This code kills a process && works together with the killme now file which has already been provided

exec { 'pkill':
  command   =>  'pkill killmenow',
  provider  =>  'shell',
}
