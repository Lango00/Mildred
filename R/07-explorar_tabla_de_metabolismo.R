#03 funciones de rbims para subdividir las tablas de metabolismo y explorarlas 
get_subset_pathway()
get_subset_pca()
get_subset_unique()

#ejemplo
get_subset_pathway ( mapped_ko_table = ko_bin_mapp , 
type_of_interest_feature = rbims_pathway , interest_feature = "Hexadecane" )
#> # Un tibble: 0 x 19 
#> # … con 19 variables: Módulo <chr>, Module_description <chr>, Pathway <chr>, 
#> # Pathway_description <chr>, Cycle <chr>, Pathway_cycle <chr>, 
#> # Detail_cycle <chr>, Genes <chr>, Gene_description <chr>, Enzyme <chr>, 
#> # KO <chr>, rbims_pathway <chr>, rbims_sub_pathway <chr>, Bin_10 <int>, 
#> # Bin_12 <int>, Bin_56 <int>, Bin_113 <int>, Bin_1 <int>, Bin_2 <int>                     

