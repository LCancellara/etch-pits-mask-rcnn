// Define the image filename
var imageName = "YOUR_IMAGE";
var imageExt = ".tif"
var image = image + imageExt

selectImage(image);

// Define the folder where masks will be saved
var maskFolder = "PATH//TO//YOUR//MASKS//FOLDER//";

// Get the number of ROIs in the ROI Manager
nROIs = roiManager("count");

// Loop through each ROI creating a mask and saving it in the appropriate folder
for (i = 0; i < nROIs; i++) {
    selectImage(image);
    roiManager("Select", i); // Select the ROI by index
    run("Create Mask");
    
    // Save the mask in the maskFolder with the generated name
    saveAs("png", maskFolder + imageName + "_mask_" + (i + 1) + ".png");
    close();
}
