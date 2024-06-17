

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end


if file_exists("testa.lua")
then
   print("file exists")
else
   print("file does not exist")
end
