
fileConn<-file("C:\\Users\\asus\\Desktop\\RandomCDR\\first.txt")
path="C:\\Users\\asus\\Desktop\\RandomCDR\\first.txt"

while (TRUE)
{
  text=paste(toString(Sys.time()),toString(Sys.time()),toString(floor(runif(1, 5300000000, 5560000000))),toString(floor(runif(1, 1, 5))),toString(floor(runif(1, 1, 5))),toString(floor(runif(1, 5300000000, 5560000000))),toString(floor(runif(1, 1, 5))),toString(floor(runif(1, 1000, 5000))),toString(floor(runif(1, 1, 5))),toString(floor(runif(1, 1, 5))),toString(floor(runif(1, 3000, 9999))),toString(floor(runif(1, 1, 5))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 10, 99))),toString(floor(runif(1, 10, 99))),toString(floor(runif(1, 100, 999))),toString(floor(runif(1, 20000, 90000))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1000, 9000))),toString(floor(runif(1, 1000, 2000))),toString(floor(runif(1, 20000, 70000))),toString(floor(runif(1, 11111111, 99999999))),toString(floor(runif(1, 0, 3))),toString(floor(runif(1, 2000, 7000))),toString(floor(runif(1, 10000, 90000))),toString(floor(runif(1, 200000000000000, 300000000000000))),toString(floor(runif(1, 2000000, 9000000))),toString(floor(runif(1, 2000000000000000, 3000000000000000))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),toString(floor(runif(1, 1, 9))),sep = ", ")
  write(text, file=path,append = TRUE)
  control<-runif(1, 1, 100)
  print(control)
  if(control>=99)
  {
    print("yeni dosya")
    close(fileConn)
    path=paste("C:\\Users\\asus\\Desktop\\RandomCDR\\",toString(floor(runif(1, 1, 999999))),".txt")
    path<-gsub(" ", "", path, fixed = TRUE)
    fileConn<-file(path)
  }
}

write(text, file=fileConn,append=TRUE)


