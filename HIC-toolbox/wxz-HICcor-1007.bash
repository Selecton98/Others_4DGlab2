#corrlation of h5

#hicCorrectMatrix diagnostic_plot -m 2-1.nor.matrix.h5  -o 2-1_hic_corrected.png

hicCorrectMatrix correct --correctionMethod ICE --iterNum 500 --matrix H-naive.matrix.h5  --outFileName H-naive.matrix.iced.h5 --filterThreshold -1 5
hicCorrectMatrix correct --correctionMethod ICE --iterNum 500 --matrix HM-naive.matrix.h5  --outFileName HM-naive.matrix.iced.h5 --filterThreshold -1 5
hicCorrectMatrix correct --correctionMethod ICE --iterNum 500 --matrix HF-naive.matrix.h5  --outFileName HF-naive.matrix.iced.h5 --filterThreshold -1 5
hicCorrectMatrix correct --correctionMethod ICE --iterNum 500 --matrix H-IgD.matrix.h5  --outFileName H-IgD.matrix.iced.h5 --filterThreshold -1 5
hicCorrectMatrix correct --correctionMethod ICE --iterNum 500 --matrix HM-IgD.matrix.h5  --outFileName HM-IgD.matrix.iced.h5 --filterThreshold -1 5
hicCorrectMatrix correct --correctionMethod ICE --iterNum 500 --matrix HF-IgD.matrix.h5  --outFileName HF-IgD.matrix.iced.h5 --filterThreshold -1 5

hicCorrelate --matrices H-naive.matrix.iced.h5 HM-naive.matrix.iced.h5 HF-naive.matrix.iced.h5  H-IgD.matrix.iced.h5 HM-IgD.matrix.iced.h5 HF-IgD.matrix.iced.h5 \
--method=spearman --log1p \
--labels H-naive HM-naive HF-naive H-IgD HM-IgD HF-IgD \
--outFileNameHeatmap 1001-H-10kb-cor-iced.pdf --outFileNameScatter 1001-H-10kb-scatter-iced.pdf \
-min 0.75  -max 1 --colorMap flag \
--plotFileFormat pdf --plotNumbers 

