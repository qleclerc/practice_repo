
# Source this awesome script to do clever data science!
if(!require(here)) install.packages("here")
cat("Adding a new LINE at the top\n\n")
user_name = readline("Hello there! Please type your username and press Enter: ")

fav_num = sample(10:100, 1)
cat("Okay", user_name, "I'm going to guess your favourite number is...", fav_num, "!")
cat("\n\nSo, I'll make a beautiful graph of a Poisson distribution with lambda =", fav_num)

data = rpois(1000, fav_num)
hist(data, main = paste0("A beautiful graph for ", user_name))

cat("\n\nLet me save this beautiful graph and the data behind it...")

filename = paste0("data_",user_name,"_",format(Sys.time(), "%Hh%M"),".rds")
saveRDS(data, here::here("data", filename))

graphname = paste0("graph_",user_name,"_",format(Sys.time(), "%Hh%M"),".png")
png(here::here("figures", graphname))
hist(data, main = paste0("A beautiful graph for ", user_name))
dev.off()

cat("\n\nDone! Don't forget to commit the changes ;)")

cat("Adding a line at the bottom\n")