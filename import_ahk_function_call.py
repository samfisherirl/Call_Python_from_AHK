import sys  

# bat file from ahk writes:
# python comline.py --functional --functional 

def recieve():  
# print('Argument List:', str(sys.argv)) 
  argmnt = str(sys.argv)
  stored = sys.argv
  #for i in argmnt:
  #  x = x + i 
  return argmnt
  #p = argmnt.split("\'")
  #print(argmnt)
  #print(p)
def cleaner(stored):
  removeQuote = stored.split("'")  
  dash = "--"
  FuncList = []
  RemoveDash = []
  for i in removeQuote: 
    if dash in i:
      RemoveDash = i.split("--")
      FuncList.append(RemoveDash[1])
    #  Pre.append(v.split("--"))
    #  print('\nfirst line: ')
    #  print(Pre)
  return FuncList # return each function name

def functional(): #functional is name of command line args sent from ahk
  print('It Works!') 

def func(v, t):
  variable_module = __import__(t)
  variable_module.__getattribute__(v) 
  variable_module.__getattribute__(v)()

stored = recieve()
FuncList = []
FuncList = cleaner(stored)
v = FuncList[0]
t = FuncList[1]
func(v, t)

############### delete below to funciton but
################ do this below for specific script and function 

#print (db.get_set1())


#for i in T:
#  print('\n last string: ')
#  print(i)
#prints second argument


#print(p)
#splitter(p)
#for i in argmnt
#  print(argmnt[i])
#eval(argmnt[1] + "()") 