//Konrad Kiełczyńsi
//Zadanie 1

def flatten1 [A](xss:List[List[A]]): List[A]=
  if xss==Nil then Nil
  else xss.head:::flatten1(xss.tail)

flatten1(List(List(1,2,3),List(4),List(5,6,7)))
flatten1(List(List("ala ","ma "),List(2),List(" lata")))
flatten1(Nil)

//Zadanie 2

def count[A](x:A,xs:List[A]): Int=
  if xs==Nil then 0
  else if xs.head==x then 1+count(x,xs.tail)
  else count(x,xs.tail)

count('a',List('a','l','a'))
count(1,List(1,2,3,4,1,1))
count('a',Nil)

//Zadanie 3

def replicate[A](x:A,n:Int): List[A]=
  if n<0 then throw new Exception("ujemna liczba")
  else if n==0 then Nil
  else x::replicate(x,n-1)

replicate("la",3)
replicate("la",0)
replicate(123,2)
//replicate("la",-5)

//Zadanie 4

def sqrList(xs:List[Int]): List[Int]=
  if xs==Nil then Nil
  else xs.head*xs.head ::sqrList(xs.tail)

sqrList(List(1,2,3,-4))
sqrList(Nil)

//Zadanie 5

def palindrome[A](xs:List[A]): Boolean=
  if xs==Nil then false
  else if xs==xs.reverse then true
  else false

palindrome(List("a","l","a"))
palindrome(List("a","b","c"))
palindrome(List(1,2,3,2,1))
palindrome(Nil)
//Zadanie 6

def listLength[A](xs:List[A]):Int=
  if xs==Nil then 0
  else 1+listLength(xs.tail)

listLength(List(1,2,3,4,5,6))
listLength(List("a","b","c"))
listLength(Nil)