### Simulations
# Simulation means artificially generating data using rules or probability distribution


## Why simulation used:
# Training
# Code testing
# Dummy datasets
# Validating outputs

# Random numbers
runif(5) #runif(n = 5, min= 0, max =1)
runif(10) #runif(n = 10, min= 0, max =1)
runif(5,1,2) # runif(n = 5, min = 1, max = 2)
randm_10_100 <- runif(10,10,100) #runif(n = 10, min= 10, max=100)

start_date <- as.Date("2026-05-17")
end_date <- as.Date("2026-06-17")
start_date_num <- as.numeric(start_date)
end_date_num <- as.numeric(end_date)
rndom_dates <- runif(20, start_date_num, end_date_num)
trtsdt <- as.Date(rndom_dates)

# samplfunction
sample(c("Placebo","Drug A","Drug B"), 10, replace = TRUE)
sample(c("Placebo","Drug A","Drug B"), 10, replace = FALSE)
sample(c("Placebo","Drug A","Drug B", "A", "B","C", "D", "E", "E", "F"), 10, replace = FALSE) #error
sample(c("Placebo","Drug A","Drug B","Drug C"), 2, replace = FALSE)

as.Date("12-31-2025", format = "%m-%d-%Y")
??as.Date

TRTSTDT <- sample(c("2026-06-13","2026-06-13","2026-06-13"), 10, replace = TRUE)
class(TRTSTDT)
TRTSTDT <- as.Date(TRTSTDT)

TRTSTDT <- sample(c("13-06-2026","16-06-2026","18-06-2026"), 20, replace = TRUE)
class(TRTSTDT)
as.Date(TRTSTDT, "%d-%m-%Y")

# two options for seq
patient_ids <- 1001:1010
seq(1001,1010)

set.seed(456)
runif(11, 1, 20)

round(runif(11, 1, 20), 10)

#Demographics dataset
### Patient centric - Country, ethnic, race, age, treatment, treatmen start, informed consent date
## patient_id(seq), age(runif, round), gender, treatment, BMI
set.seed(123) #repeat same random
dm <- data.frame(
  patient_id = 1:20,
  age        = round(runif(20,1,100),0),
  gender     = sample(c("M","F"), 20, replace = TRUE),
  treatments = sample(c("Drug A","Drug B","Drug C"),20, replace = TRUE),
  BMI        = round(runif(20,15,35),2)
)


ncol(dm)
nrow(dm)
dim(dm)[2]

dm_new <- dm %>% rename(sex = gender)
dm_new$age_days <- dm_new$age*365
dm_new$BMI_new <-  round(dm_new$BMI, 1)
dm_new %>% select(-BMI)

cat("rown in dm are ",nrow(df))
##round
ceiling(13.1) #14
floor(13.1) #13
# round nearest

## numeric random
rnorm(10,mean = 14, sd=2)

## data, missing values simulate 
labs$lab_value[sample(1:nrow(labs), 2)] <- NA

## location - csv, R
getwd()
setwd("")


list.files(path = getwd())
list.files(path = "/Users/kedar/Downloads/InterDictBio-main")
list.files(path = getwd(), pattern = ".png")
list.files(path = ".", pattern = ".png")
list.files(path = ".", pattern = "Day")

list.dirs(path = getwd())
