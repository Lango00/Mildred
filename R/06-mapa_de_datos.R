##asignando KO al resto de caracteristicas de la base de datos KEGG y rbims

library(readxl)
metadata<-read_ko(ko_bin_mapp<-mapping_ko(ko_bin_table)         

mapeo_ko(ko_bin_table)
#> # Una tibble: 9.882 x 19
#> Módulo Module_description Pathway Pathway_descripti… Cycle Pathway_cycle
#>     <chr> <chr> <chr> <chr> <chr> <chr> #   >                   1     NA               NA          
NA NA NA NA # > 2 NA            
NA map00564 Glicerofosfolípido …                      NA NA #            
> 3 M00004 Pentosa fosfato pat… map00030 Pentosa fosfato … NA NA            
#> 4 M00007 Pentosa fosfato pat… map00030 Pentosa fosfato… NA NA            
#>5 M00004 Pentosa fosfato pa… map01100 Vías metabólicas NA NA                                                                                        
#> 6 M00007 Pentosa fosfato pat... map01100 Vías metabólicas NA     NA            
#> 7 M00004 Pentosa fosfato pat... map01110 Biosíntesis de s... NA     NA            
#> 8 M00007 Pentosa fosfato pat... map01110 Biosíntesis de s... NA     NA            
#> 9 M00004 Pentosa fosfato pat … map01120 Metabolismo microbiano… NA     NA            
#> 10 M00007 Fosfato de pentosa pat… map01120 Metabolismo microbiano… NA     NA            
#> # … con 9872 filas más y 13 variables más: Detail_cycle <chr>, 
#># Genes <chr>, Gene_description <chr>, Enzyme <chr>, KO <chr>, 
#> # rbims_pathway <chr>, rbims_sub_pathway <chr>, Bin_10 <int>, Bin_12 <int>, 
#> # Bin_56 <int >, Bin_113 <int>, Bin_1 <int>, Bin_2 <int>