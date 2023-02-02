order_taxa<-c("Bin_1", "Bin_2", "Bin_10", "Bin_113", "Bin_12", "Bin_56")


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