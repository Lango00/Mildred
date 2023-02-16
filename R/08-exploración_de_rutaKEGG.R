library(rbims)

Biofilm_Vibrio<-c("map05111")


library(tidyr)
Biofilm_Vibrio_subset<-ko_bin_mapp%>%
  drop_na(Pathway)%>%
  get_subset_pathway(Pathway, Biofilm_Vibrio) 



head(Biofilm_Vibrio_subset)
#> # A tibble: 6 x 19
#>   Module Module_description      Pathway  Pathway_descripti… Cycle Pathway_cycle
#>   <chr>  <chr>                   <chr>    <chr>              <chr> <chr>        
#> 1 <NA>   <NA>                    map05111 Biofilm formation… <NA>  <NA>         
#> 2 <NA>   <NA>                    map05111 Biofilm formation… <NA>  <NA>         
#> 3 <NA>   <NA>                    map05111 Biofilm formation… <NA>  <NA>         
#> 4 M00878 Phenylacetate degradat… map05111 Biofilm formation… <NA>  <NA>         
#> 5 <NA>   <NA>                    map05111 Biofilm formation… Other Flagellar as…
#> 6 <NA>   <NA>                    map05111 Biofilm formation… <NA>  <NA>         
#> # … with 13 more variables: Detail_cycle <chr>, Genes <chr>,
#> #   Gene_description <chr>, Enzyme <chr>, KO <chr>, rbims_pathway <chr>,
#> #   rbims_sub_pathway <chr>, Bin_10 <int>, Bin_12 <int>, Bin_56 <int>,
#> #   Bin_113 <int>, Bin_1 <int>, Bin_2 <int>

#para graficar la presencia y ausencia de los diferentes KO asociados con esa vía
plot_bubble(tibble_ko = Biofilm_Vibrio_subset,
            x_axis = Bin_name, 
            y_axis = KO,
            analysis="KEGG",
            data_experiment = metadata,
            calc="Binary",
            color_character = Order,
            range_size = c(1,10)) 
#> Warning: Removed 66 rows containing missing values (geom_point).
