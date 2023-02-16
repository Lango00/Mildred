#para crear vector con el metabolismo de interes 
Other_energy<-c("Fermentation", "Carbon fixation", "Methane metabolism", 
                "Sulfur metabolism", "Nitrogen metabolism")
Other_energy<-c("Energy metabolism")

#para crear subconjuntos de la tabla 
library(tidyr)
Energy_metabolisms<-ko_bin_mapp %>%
  drop_na(Cycle) %>%
  get_subset_pathway(Cycle, Other_energy)

head(Energy_metabolisms)
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


#para graficar 
#El argumento order_y ordenará las filas según una característica metabólica
plot_heatmap(tibble_ko=Energy_metabolisms, 
             y_axis=Pathway_cycle,
             order_y= Cycle,
             analysis = "KEGG",
             calc="Percentage")
#el argumento order_y ordenará las filas según una función de metadatos
plot_heatmap(tibble_ko=Energy_metabolisms, 
             y_axis=Pathway_cycle,
             data_experiment=metadata,
             order_x = Sample_site,
             analysis = "KEGG",
             calc="Percentage")
#el argumento split permite dividir las filas según un valor específico de los metadatos
plot_heatmap(tibble_ko=Energy_metabolisms, 
             y_axis=Pathway_cycle,
             order_y = Cycle,
             split_y = TRUE,
             analysis = "KEGG",
             calc="Percentage")
#el argumento order_x le permite agregar información de anotaciones de los metadatos para las columnas
plot_heatmap(tibble_ko = Energy_metabolisms,y_axis = Pathway_cycle,
             analysis = "KEGG",data_experiment= metadata, 
             calc = "Percentage",split_y = TRUE,order_x= Clades)
                                      
             
