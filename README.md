# etch-pits-mask-rcnn
Notebook to fine-train up to 5 layers of pytorch's implementation of Mask-R-CNN with ResNet backbone to detect and segment etch pits in micrographs.

The default weights were fine-tuned on scanning electron micrographs in the 35000x-250000x magnification range of
epitaxially grown BiSb thin films on GaAs substrates, with binary masks drawn manually using ImageJ.
The .png masks can be created with the ImageJ Macro given in the text file "Masks-from-ROI-list_ImageJ".

The code includes functions to run the automatic detection and save the data for further processing.
Functions for the visualization of simple data (visual comparison by overlapping the predictions to the original image, size histogram) are included.
