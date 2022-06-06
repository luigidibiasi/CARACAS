
%load the file PVC or not PVC
data = load('');
size (data)
data1 = data;
data(:,1) = [];
dataNorm = normalize(data);

matrix = [data1(:,1) dataNorm(:,1:end)];
path=pwd;
j=0;
i=0;
z=0;


 for k=1:size(matrix,1)
    if matrix(k)== 0
                fig = plot(matrix(k,:))
                grid on
                %path + folder name 
                pathImg=strcat('');
                %image name
                nameImg=strcat('');
                j=j+1;
                saveas(fig,[pathImg,nameImg],'jpeg')
              
    end
        if matrix(k)== 1
                    fig = plot(matrix(k,:))
                    grid on
                    %path + folder name
                    pathImg=strcat('');
                     %image name
                    nameImg=strcat('');
                    i=i+1;
                    saveas(fig,[pathImg,nameImg],'jpeg')
                  
        end

 end   