% Merging each participants data file into one .mat file
clear; clc
addpath("C:\Users\Anika\Desktop\EE 502_Data\Control_part2\Control_part2\analysis")
path='*.mat';  
filelist=dir(path);
mkdir('C:\Users\Anika\Desktop\EE 502_Data/EEG_Analysis/merged_data_ADHD') % Creating new folder

for i = 1:length(filelist)
    tmp = load(filelist(i).name);
    s(i).data = struct2cell(tmp);
end
m=vertcat(s.data);
 for j=1:length(m)
      c=cell2mat(m);   
end

save("C:\Users\Anika\Desktop\EE 502_Data\EEG_Analysis/merged_data_control/eeg_data_part2",'c');
