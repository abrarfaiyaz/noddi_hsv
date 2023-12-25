function plot_noddi_combined(icvf, fiso, ODI, slices)
    % plot_combined - Plots ICVF, FISO, and ODI for given slices
    % 
    % Inputs:
    %   icvf   - ICVF data (3D matrix)
    %   fiso   - FISO data (3D matrix)
    %   ODI    - ODI data (3D matrix)
    %   slices - Vector of slice indices to plot

    if nargin < 4
        slices = [72];  % Default slice if not specified
    end

    for k = slices
        % Prepare the data for the slice
        sliceData = zeros(size(icvf, 1), size(icvf, 2), 3);
        sliceData(:,:,1) = rot90(fiso(:,:,k), 1);
        sliceData(:,:,2) = rot90(ODI(:,:,k), 1);
        sliceData(:,:,3) = rot90(icvf(:,:,k), 1);

        % Convert to RGB for visualization
        rgbSlice = hsv2rgb(sliceData);

        % Plotting
        figure('Renderer', 'painters', 'Position', [10 10 600 200]);
        imagesc(rgbSlice);
        title(['Slice: ', num2str(k)]);
        xlabel('X Axis');
        ylabel('Y Axis');
        set(gca, 'xtick', [], 'ytick', []);

%         colormap hot; % Optional: Adjust colormap as needed
%         colorbar;     % Optional: Add a colorbar
    end
end
