% % show mat annotation
% % Annotation format
% % object.box_coord: [ymin ymax xmin xmax]
% % object.obj_contour: [2*n] [x y]'

clear all; clc;
cat = 'motorbike';                  % set category
impath = [ cat '/images/'];         
contpath = [ cat '/contours/'];
annopath = [ cat '/annotations/'];

imlist = dir([annopath '*.mat']);

for i = 1:length(imlist)
    [p name ext] = fileparts(imlist(i).name);
    fprintf('Show image %.3d | %.3d: %s.jpg\nPress Ctrl + C to exit', i, length(imlist), name);
    
    load([annopath name ext]);
    im = imread([impath name '.jpg']);
    
    figure; imshow(im); hold on;
    
    for j = 1:length(object)
        % get bounding box coordinate
        box_coord = object(j).box_coord;
        obj_contour = object(j).obj_contour;
        
        % show box
        box_handle = rectangle('position', [box_coord(3), box_coord(1), box_coord(4)-box_coord(3), box_coord(2)-box_coord(1)]);
        set(box_handle, 'edgecolor','y', 'linewidth',5);
        
        % show contours
        for cc = 1:size(obj_contour,2)
           if cc < size(obj_contour,2)
              plot([obj_contour(1,cc), obj_contour(1,cc+1)]+box_coord(3), [obj_contour(2,cc), obj_contour(2,cc+1)]+box_coord(1), 'r','linewidth',4);
           else
              plot([obj_contour(1,cc), obj_contour(1,1)]+box_coord(3), [obj_contour(2,cc), obj_contour(2,1)]+box_coord(1), 'r','linewidth',4);
           end
        end
    end
    pause; close all; clc;
end

