function [ sorted_array ] = merge_sort11( input_array,p,r )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here\
length_test_Var=length(input_array)
if(p~=r)
    number_of_zero=p-1;
    pad=zeros(1,number_of_zero);
    input_array=[pad,input_array];
end
if(p==r)
    sorted_array=input_array;
else
    split=(p+r)/2;
    split=floor(split)
    set_1=merge_sort11(input_array(p:split),p,split)
    set_2=merge_sort11(input_array(split+1:r),split+1,r)
    sorted_array=merge(set_1,set_2)
    
end
end
