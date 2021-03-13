## Convert eHARS dates (YYYYMMDD) to MM/DD/YYYY
## eHARS dates often include '..' for missing months and days

string_to_date <- function(x) {

    std_year <- if_else(str_sub(x, start = 1, end = 4) == "", "....", str_sub(x, start = 1, end = 4))
    std_month <- if_else(str_sub(x, start = 5, end = 6) == "", "..", str_sub(x, start = 5, end = 6))
    std_day <- if_else(str_sub(x, start = 7, end = 8) == "", "..", str_sub(x, start = 7, end = 8))

    std_date <- paste0(std_month, '/', std_day, '/', std_year)

    return(std_date)

}
