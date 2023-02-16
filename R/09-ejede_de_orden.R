
#para crear un vector 
order_taxa<-c("Bin_1", "Bin_2", "Bin_10", "Bin_113", "Bin_12", "Bin_56")

#para trazar
plot_bubble(tibble_ko = Biofilm_Vibrio_subset,
            data_experiment = metadata,
            x_axis = Bin_name,
            y_axis = Genes,
            analysis="KEGG",
            calc="Binary",
            order_bins=order_taxa,
            color_character=Genus,
            range_size = c(5,6))

#> Warning: Removed 66 rows containing missing values (geom_point).
#> 

#para estraer la información de algunos KO relacionados con el metabolismo de fijación de Carbono
Carbon_fixation<-c("K01007", "K00626", "K01902", "K01595", "K01903", "K00170", "K00169", "K00171", "K00172", "K00241")

#para extraer el perfil asociado con esa vía metabólica
library(tidyr)
Carbon_fixation_subset<-ko_bin_mapp%>%
  drop_na(KO)%>%
  get_subset_pathway(KO, Carbon_fixation)

head(Carbon_fixation_subset)
#> # A tibble: 6 x 19
#>   Module Module_description   Pathway  Pathway_descripti… Cycle  Pathway_cycle  
#>   <chr>  <chr>                <chr>    <chr>              <chr>  <chr>          
#> 1 M00173 Reductive citrate c… map00010 Glycolysis / Gluc… Carbo… Reductive citr…
#> 2 M00173 Reductive citrate c… map00010 Glycolysis / Gluc… Carbo… Dicarboxylate-…
#> 3 M00374 Dicarboxylate-hydro… map00010 Glycolysis / Gluc… Carbo… Reductive citr…
#> 4 M00374 Dicarboxylate-hydro… map00010 Glycolysis / Gluc… Carbo… Dicarboxylate-…
#> 5 M00173 Reductive citrate c… map00620 Pyruvate metaboli… Carbo… Reductive citr…
#> 6 M00173 Reductive citrate c… map00620 Pyruvate metaboli… Carbo… Dicarboxylate-…
#> # … with 13 more variables: Detail_cycle <chr>, Genes <chr>,
#> #   Gene_description <chr>, Enzyme <chr>, KO <chr>, rbims_pathway <chr>,
#> #   rbims_sub_pathway <chr>, Bin_10 <int>, Bin_12 <int>, Bin_56 <int>,
#> #   Bin_113 <int>, Bin_1 <int>, Bin_2 <int>


#para visualizar los datos en un mapa de calor 
plot_heatmap(tibble_ko=Carbon_fixation_subset, 
             y_axis=Genes,
             analysis = "KEGG",
             calc="Binary")

