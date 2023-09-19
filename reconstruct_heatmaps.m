clc, clear, close all

%% Inputs
predTable = readtable('C:\malezas\probabilidades.csv' , 'delimiter' , ','); % Table con predicciones
dirImages = 'C:\malezas\data\wholeImages';                                  % Directorio con las ortoimagenes
patchSize = 256;                                                            % Tamaño de parche
overlap = .5;                                                               % Solapamiento
%% Main
% A parir de los nombres de los parches, identificar las ortoimágenes (Vuelos)
C = cellfun(@(x) split(x,'_'), predTable.identificador, 'UniformOutput', false)';
ortoImagen = string(cellfun(@(x) x{1}, C, 'UniformOutput', false));

% Obtener los pesos para la interpolación bilinea en la reconstrucción
[ w ] = get_bilinial_interp_weigths(patchSize , overlap);

% Para cada uno de los vuelos...
uniqueImages = unique(ortoImagen);
for iVuelo = 1:numel(uniqueImages)
    
    % Obetener id del vuelo
    id = char(uniqueImages(iVuelo));
    file = dir([dirImages '\*' id '*']);
    
    % Cargar imagen
    imagen = imread([file(1).folder '\' file(1).name]);
    
    % Inicializar el mapa de calor de predicciones
    predicted_mask = zeros(size(imagen,1),size(imagen,2));
    
    % De la tabla de predicciones, coger aquellas predicciones que son del vuelo que se está procesando.
    auxPredTable = predTable(ismember(ortoImagen ,uniqueImages(iVuelo)),:); 
    % Para cada parche...
    for i = 1:size(auxPredTable,1)
        
        disp(['Parche ' char(num2str(i)) '/' char(num2str(size(auxPredTable,1)))])
        
        % Obtener probabilidad predicha
        p = auxPredTable.probabilidad(i);
        
        % Obtener nombre del parche y coordenadas de inicio
        patchName = auxPredTable.identificador(i);
        patchName = string(patchName{1}(1:end-4));
        C = split(patchName , '_');
        initFila =  str2num(C{9});
        initColumna = str2num(C{13});
        
        % Asignar valures al mapa de calor. Se pondera la predicción por interpolación bilineal
        predicted_mask(initFila:initFila+patchSize-1 , initColumna:initColumna+patchSize-1) = predicted_mask(initFila:initFila+patchSize-1 , initColumna:initColumna+patchSize-1)  + p*w;

    end    
    
    % Darle un rango de colores rgb a la mascara de prediccione para obtener un mapa de calor
    gray_Annotation = (predicted_mask);
    ind_Annotation = gray2ind(gray_Annotation, 255);
    rgb_Annotation = ind2rgb(ind_Annotation, jet(255));
    
    % Juntar mapa de calor e imagen original en niveles de gris
    heatMapOut = (0.7*mat2gray(imagen)) + (0.3*(rgb_Annotation));

    % Visualizar
    figure(111)
    imshow(heatMapOut)

    
end

function [ w ] = get_bilinial_interp_weigths(patchSize , overlap)

    w = zeros(patchSize, patchSize);

    if overlap == .5
        peso = 3.5; %el valor original se inicio en 2
    end

    % Para cada pixel en el eje Y
    for y = 1:patchSize
        % Se establece el peso del pixel en el eje Y
        pixelLocationFromPatchCenterY = (y) / patchSize;
        if pixelLocationFromPatchCenterY < 0.5
            weightY = peso * pixelLocationFromPatchCenterY;
        else
            weightY = peso * (1 - pixelLocationFromPatchCenterY);
        end
        
        % Para cada pixel en el eje X
        for x = 1:patchSize
            % Se establece el peso del pixel en el eje X
            pixelLocationFromPatchCenterX = (x) / patchSize;
            if pixelLocationFromPatchCenterX < 0.5
                weightX = peso * pixelLocationFromPatchCenterX;
            else
                weightX = peso * (1 - pixelLocationFromPatchCenterX);
            end
            w(y,x) = weightX * weightY;
        end
    end

end