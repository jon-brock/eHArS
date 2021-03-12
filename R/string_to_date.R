## Convert eHARS dates (YYYYMMDD) to MM/DD/YYYY
## eHARS dates often include '..' for missing months and days

string_to_date <- function(x) {

    r_year <- str_sub(x, start = 1, end = 4)
    r_month <- str_sub(x, start = 5, end = 6)
    r_day <- str_sub(x, start = 7, end = 8)

    r_date <- paste0(r_month, '/', r_day, '/', r_year)

}
