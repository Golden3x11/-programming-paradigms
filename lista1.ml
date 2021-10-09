
(*Konrad Kielcznski*)

    (*Zadanie 1*)

    let rec flatten1= fun xss ->
       if xss=[] then []
       else List.hd xss @ flatten1( List.tl xss);;
                                        
    flatten1[[1;2];[3];[4;5]];;
    flatten1[["ala ";"ma "];[" kota"]];;
    flatten1([]);;


    (*Zadanie 2*)
    
    let rec count= fun (x,xs)->
      if xs=[] then 0
      else if List.hd xs = x then 1+ count(x, List.tl xs)
      else count(x, List.tl xs);;

    count ('a',[]);;
    count (1,[1;2;3;1;1]);;
    count ('a',['a';'l';'a']);;

    (*Zadanie 3*)

    let rec replicate= fun(x,n)->
      if n<0 then failwith "ujemna liczba"
      else if n=0 then []
      else [x]@ replicate(x,n-1);;

    replicate ("la",3);;
    replicate ("la",0);;
    replicate (123,2);;
    (* replicate ("la",-4);;*)

    (*Zadanie 4*)

    let rec sqrList= fun xs->
      if xs = [] then []
      else[List.hd xs*List.hd xs]@ sqrList( List.tl xs);;

    sqrList [1;2;3;-5];;
    sqrList [];;

    (*Zadanie 5*)

    let rec palindrome= fun xs->
      if xs=[] then false
      else if xs=List.rev xs then true
      else false;;

    palindrome ["a";"l";"a"];;
    palindrome ["a";"b";"c"];;
    palindrome [1;2;3;2;1];;
    palindrome [];;

    (*Zadanie 6*)

    let rec listLength= fun xs->
      if xs=[] then 0
      else 1+ listLength(List.tl xs);;

    listLength [1;2;3;4;5;6];;
    listLength ["a";"B";"c"];;
    listLength [];;
       

      

    
