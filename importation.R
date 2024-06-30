#Library néssessaaires
library(tidyverse)
library(robotoolbox)
#se connecter à Koko
kobo_setup(url="https://kf.kobotoolbox.org",
           token = Sys.getenv("MY_TOKEN"))
#se connecter au formulaire
asset=kobo_asset(Sys.getenv("MY_UID"))
asset |>
  kobo_asset()|>
  kobo_data()|>
  write_rds("visites.rds")