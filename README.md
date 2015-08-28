SYSU-Shape Dataset
==================

SYSU-Shapes dataset is a new shape database including elaborately annotated shape contours. Compared with the existing shape databases, this database includes more realistic challenges in shape detection and localization, e.g., cluttered backgrounds, large intraclass variations, and different poses/views, in which part of the instances were originally used for appearance-based object detection.

There are 5 categories, i.e. airplanes, boats, cars, motorbikes, and bicycles, and each category contains 200~500 images. The shape contours are carefully labeled by a professional team using the LabelMe toolkit. It is worth mentioning that each image has at least but not limit to one object of a given category.

Files
--------
	Root directory contains following files and folders:
	- README.md				this file
	- samples.jpg			some typical visualized examples of the SYSU-Shapes dataset
	- show_annotation.m		visualization code to demonstrate the use of the dataset
	- airplane				follows are five categories
	- bicycle
	- boat
	- car
	- motorbike
	
	Each category contains three folders
	- annotations			annotation file (.mat)
	- contours				contours extracted by pb contour detector
	- images				original image files

Usage
-----
	Please refer to show_annotation.m for detailed usage of the SYSU-Shapes dataset.
	
How to Cite
-----------
If you make use of the SYSU-Shape data, please cite the following reference in any publications:

*Liang Lin, Xiaolong Wang, Wei Yang, and JianHuang Lai*, 
**Discriminatively Trained And-Or Graph Models for Object Shape Detection**, 
*IEEE Transactions on Pattern Analysis and Machine Intelligence (T-PAMI), DOI: 10.1109/TPAMI.2014.2359888, 2014.*
