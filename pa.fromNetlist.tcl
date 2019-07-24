
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name generate_arrows -dir "D:/ise vhdl/Projet_sembV1.5/generate_arrows/generate_arrows/planAhead_run_1" -part xc6slx16csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ise vhdl/Projet_sembV1.5/generate_arrows/generate_arrows/Top_module.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ise vhdl/Projet_sembV1.5/generate_arrows/generate_arrows} {ipcore_dir} }
set_property target_constrs_file "D:/ise vhdl/Projet_sembV1.5/modules missing/Main.ucf" [current_fileset -constrset]
add_files [list {D:/ise vhdl/Projet_sembV1.5/modules missing/Main.ucf}] -fileset [get_property constrset [current_run]]
link_design
