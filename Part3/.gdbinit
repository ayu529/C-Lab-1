# Gdb init file for linked list debugging
# $PWD/.gdbinit
define p_generic_list
  set var $n = $arg0
  while $n
    print *($n)
    set var $n = $n->next
  end
end

# This section was done with assistance from the 295AI on the course website.
define p_filtered_list
  set var $n = $arg0
  while $n
    if (*($n)).data == 5
      print *($n)
    end
    set var $n = $n->next
  end
end

document p_filtered_list
        p_filtered_list LIST_HEAD_POINTER
        Print all the fields of the nodes in the linked list pointed to by LIST_HEAD_POINTER, but only if the data field is equal to 5. Assumes there is a 'data' and 'next' field in the struct.
end



define indentby
    printf "\n"
    set $i_$arg0 = $arg0
    while $i_$arg0 > 10
        set $i_$arg0 = $i_$arg0 - 1
        printf "%c", ' '
    end
end
