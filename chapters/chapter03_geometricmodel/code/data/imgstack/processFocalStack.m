function processFocalStack()
  clc,close all
  numImg = 9;
  addpath('.\fmeasure')
  
  DIRNAME = '.\png_stack\';
  tmp = im2double(rgb2gray(imread([DIRNAME '000.png'])));

  %figure(101)
  %imshow( imread([DIRNAME '000.png']) );
  %title('First image in sequence')
% error('DONE')  
  
  arr3_Gray = zeros(size(tmp,1),size(tmp,2),numImg);
  arr3_RGB  = cell(1, numImg);   % insr: was "cell(numImg)"
  measure  = zeros(size(tmp,1),size(tmp,2),numImg);
  for nn = 1:numImg
    str = sprintf('%03d.png',nn-1);
    arr3_RGB{nn} = im2double(imread([DIRNAME str]));
    arr3_Gray(:,:,nn) = rgb2gray(arr3_RGB{nn}); 
    measure(:,:,nn) = fmeasure( arr3_Gray(:,:,nn),'LAPE',[] );  %LAPD, HISE, GRAS,  doesn't work
    % LAPE, LAPM works OK
    %size(measure) % 2320 x 3375 x7
  end
  
%   % show the focus measure images
%   figure(201)
%   axis tight;
%   for nn = 1:numImg
%       ax1 = subplot(1,2,1);
%       str = sprintf('%03d.png',nn-1);
%       imshow(im2double(imread([DIRNAME str])));
%       ax2 = subplot(1,2,2);
%       imshow(measure(:,:,nn).^0.2);
%       colormap(ax2,jet)
%       %max(max(measure(:,:,nn)))
%       %min(min(measure(:,:,nn)))
%       
%       w = waitforbuttonpress;
%   end
%       
% 
%  error('DONE')
  
  [~,ord] = max(measure,[],3);  %insr: get the index (ord) of the maximum at each pixel across the stack (thrid dimension)
  %
  sum_measure = sum( measure,3 );
  wts = measure./repmat(sum_measure,[1,1,size(measure,3)]);
  wts(isnan(wts)) = 1/size(measure,3); 
  %
  composite = zeros(size(arr3_Gray,1),size(arr3_Gray,2),3);
  wtd_composite = zeros(size(arr3_Gray,1),size(arr3_Gray,2),3);
  for nn = 1:numImg
    composite(:,:,1) = composite(:,:,1) + arr3_RGB{nn}(:,:,1).*(ord==nn);
    composite(:,:,2) = composite(:,:,2) + arr3_RGB{nn}(:,:,2).*(ord==nn);
    composite(:,:,3) = composite(:,:,3) + arr3_RGB{nn}(:,:,3).*(ord==nn);
    %
    wtd_composite(:,:,1) = wtd_composite(:,:,1) + arr3_RGB{nn}(:,:,1).*wts(:,:,nn);
    wtd_composite(:,:,2) = wtd_composite(:,:,2) + arr3_RGB{nn}(:,:,2).*wts(:,:,nn);
    wtd_composite(:,:,3) = wtd_composite(:,:,3) + arr3_RGB{nn}(:,:,3).*wts(:,:,nn);
  end
%
   figure(1001)
   imshow( composite );
   title('Composite image');
  %
  figure(1002)
  imshow( wtd_composite );
  title('Weighted Composite image');
%}
  
end

% Rescale dynamic range
function img = adjustDR( img,mx,mn,bEnableAdjustments )
  if bEnableAdjustments
    mx_img = max(img(:));
    mn_img = min(img(:));    
    img = (img-mn_img)/(mx_img-mn_img)*(mx-mn) + mn;
  else  
    img = img;
  end  
end
