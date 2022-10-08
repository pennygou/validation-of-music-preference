import excel "/Users/gouzepeng/Library/Mobile Documents/com~apple~CloudDocs/Desktop/研究生/马总/音乐心理学/第一轮数据筛选.xlsx", sheet("sheet1") cellrange(A2:DG1164) firstrow clear
rename Q1_1 G_Alt
rename Q1_2 G_blu
rename Q1_3 G_cla
rename Q1_4 G_Cou
rename Q1_5 G_dan
rename Q1_6 G_fol
rename Q1_7 G_fun
rename Q1_8 G_hea
rename Q1_9 G_wor
rename Q1_10 G_jaz
rename Q1_11 G_new
rename BY G_ope
rename BZ G_pop
rename CA G_pun
rename CB G_rap
rename CC G_reg
rename CD G_rel
rename CE G_roc
rename CF G_sou
rename CG G_fus
rename CH G_cfm
rename CI G_old
estat kmo
pca G_Alt G_blu G_cla G_Cou G_dan G_fol G_fun G_hea G_wor G_jaz G_new G_ope G_pop G_pun G_rap G_reg G_rel G_roc G_sou G_fus G_cfm G_old
factor G_Alt G_blu G_cla G_Cou G_dan G_fol G_fun G_hea G_wor G_jaz G_new G_ope G_pop G_pun G_rap G_reg G_rel G_roc G_sou G_fus G_cfm G_old, pcf
screeplot, yline(1)
graph save Graph "/Users/gouzepeng/Library/Mobile Documents/com~apple~CloudDocs/Desktop/研究生/马总/音乐心理学/Graph.gph"
rotate
///country uniqueness的值大于0.6
	 
