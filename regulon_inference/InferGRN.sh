# This is the example for all cd8 analysis. Point to other folders to use CD4.

# You should download a priory motifs files and annotations (https://pyscenic.readthedocs.io/en/latest/installation.html)

# get adj matrix
sudo docker run -it --rm \
    -v /home/bisquared/scenic/totcd8:/home/bisquared/scenic/totcd8 \
    aertslab/pyscenic:0.12.1 pyscenic grn \
        --num_workers 25 \
        -o /home/bisquared/scenic/totcd8/expr_mat.adjacencies.tsv \
        /home/bisquared/scenic/totcd8/expression_matrix.tsv \
        /home/bisquared/scenic/totcd8/TF_names_v_1.01.txt



# get regulons
sudo docker run -it --rm \
    -v /home/bisquared/scenic/totcd8:/home/bisquared/scenic/totcd8 \
    aertslab/pyscenic:0.12.1 pyscenic ctx \
        /home/bisquared/scenic/totcd8/expr_mat.adjacencies.tsv \
        /home/bisquared/scenic/totcd8/hg38_10kbp_up_10kbp_down_full_tx_v10_clust.genes_vs_motifs.rankings.feather \
        /home/bisquared/scenic/totcd8/hg38_500bp_up_100bp_down_full_tx_v10_clust.genes_vs_motifs.rankings.feather \
        --annotations_fname /home/bisquared/scenic/totcd8/motifs-v10nr_clust-nr.hgnc-m0.001-o0.0.tbl \
        --expression_mtx_fname /home/bisquared/scenic/totcd8/expression_matrix.tsv \
        --mode "custom_multiprocessing" \
        --output /home/bisquared/scenic/totcd8/regulons.csv \
        --num_workers 25


# get AUC
sudo docker run -it --rm \
    -v /home/bisquared/scenic/totcd8:/home/bisquared/scenic/totcd8 \
    aertslab/pyscenic:0.12.1 pyscenic aucell \
        /home/bisquared/scenic/totcd8/filtered.loom \
        /home/bisquared/scenic/totcd8/regulons.csv \
        -o /home/bisquared/scenic/totcd8/final.loom \
        --num_workers 5



