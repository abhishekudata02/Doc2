  state <- read.csv("/home/arcanin3/dmprac/1ese_final/final/cube/state.csv")
state_key <- state$key
state_name <- state$name
state_country <- state$country
state_table <- 
  data.frame(key=state_key,
             name=state_name,
             country=state_country)

month <- read.csv("/home/arcanin3/dmprac/1ese_final/final/cube/month.csv")
month_key <- month$key
month_desc <- month$desc
month_quarter <- month$quarter
month_table <- 
  data.frame(key=month_key,
            desc=month_desc,
            quarter=month_quarter)


product <- read.csv("/home/arcanin3/dmprac/1ese_final/final/cube/product.csv")
product_key <- product$key
product_price <- product$price

prod_table <- 
  data.frame(key=product_key,
            price=product_price)

# Function to generate the Sales table
gen_sales <- function(no_of_recs) {

  # Generate transaction data randomly
  loc <- sample(state_table$key, no_of_recs, 
                replace=T, prob=c(2,2,1,1,1))
  time_month <- sample(month_table$key, no_of_recs, replace=T)
  time_year <- sample(c(2012, 2013), no_of_recs, replace=T)
  prod <- sample(prod_table$key, no_of_recs, replace=T, prob=c(1, 3, 2))
  unit <- sample(c(1,2), no_of_recs, replace=T, prob=c(10, 3))
  amount <- unit*prod_table[prod,]$price

  sales <- data.frame(month=time_month,
                      year=time_year,
                      loc=loc,
                      prod=prod,
                      unit=unit,
                      amount=amount)

  # Sort the records by time order    
  sales <- sales[order(sales$year, sales$month),]
  row.names(sales) <- NULL
  return(sales)
}

# Now create the sales fact table
sales_fact <- gen_sales(500)

# Look at a few records
head(sales_fact)
revenue_cube <- 
    tapply(sales_fact$amount, 
           sales_fact[,c("prod", "month", "year", "loc")], 
           FUN=function(x){return(sum(x))})
revenue_cube
dimnames(revenue_cube)
# Slice
# cube data in Jan, 2012
revenue_cube[, "1", "2012",]
 
# cube data in Jan, 2012
revenue_cube["Tablet", "1", "2012",]

#Dice
revenue_cube[c("Tablet","Laptop"), 
            c("1","2","3"), 
            ,
            c("CA","NY")]

#rollup
apply(revenue_cube, c("year", "prod"), FUN=function(x) {return(sum(x, na.rm=TRUE))})

#drildown
apply(revenue_cube, c("year", "month", "prod"), FUN=function(x) {return(sum(x, na.rm=TRUE))})

