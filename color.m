clc;
clear;
colorspace_ciedemo;
file_path = 'C:\Users\13729\Documents\WeChat Files\wxid_a6l9v8idcwc822\FileStorage\File\2023-04\color\';% 图像文件夹路径 
img_path_list = dir(strcat(file_path,'*.png'));%获取该文件夹中所有png格式的图像  
img_num = length(img_path_list);%获取图像总数量  

if img_num > 0 %有满足条件的图像  
        for j = 1:min(img_num, 20) %逐一读取图像  
             image_name = img_path_list(j).name;% 图像名  
  
             A = imread([file_path,image_name]);  
             B = colorspace('XYZ<-RGB',A);
   
             C1=B(1,1,1);
             C2=B(1,1,2);
             C3=B(1,1,3);
             C=C1+C2+C3;
             D=B/C; 
             X=D(1,1,1);
             Y=D(1,1,2);
             Z=D(1,1,3);
             hold on
             plot(X,Y,'k.','MarkerSize',10) %  'k.' 代表 black黑色点
             title('色品图')
        end       
      
end