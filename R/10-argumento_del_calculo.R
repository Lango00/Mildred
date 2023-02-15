#para crear vector con el metabolismo de interes 
Other_energy<-c("Fermentation", "Carbon fixation", "Methane metabolism", 
                "Sulfur metabolism", "Nitrogen metabolism")

#para crear subconjuntos de la tabla 
get_subset_pathway ( maped_ko_table , type_of_interest_feature ,
                     interest_feature )
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
plot_heatmap(tibble_ko=Energy_metabolisms, 
             y_axis=Pathway_cycle,
             order_y = Cycle,
             analysis = "KEGG",
             calc="Percentage")
#el argumento order_x ordenará las filas según una función de metadatos
#el argumento split permite dividir las filas según un valor específico de los metadatos
#el argumento order_x le permite agregar información de anotaciones de los metadatos para las columnas