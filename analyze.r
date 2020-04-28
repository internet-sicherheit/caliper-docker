# This R script contains some examples how to work with the data from the report.html file.

library(rvest)
library(dplyr)

report_html <- read_html("report.html")

report_html %>% html_nodes(xpath="//strong[.='Performance metrics']/following::table[1]") 

td <- report_html %>% html_nodes(xpath="//strong[.='Performance metrics']/following::table[1]")  %>% html_table()
df <- bind_rows(td, .id = "column_label")

open <- subset(df, Name == "open")

barplot(open[,"Avg Latency (s)"], main="Caliper open test with Fabric (100 tx)",
        xlab="Number of Gears", ylab="Avg Latency (s)")
