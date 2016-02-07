function [ merge_set ] = merge( arr1,arr2 )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
long_length=max(length(arr1),length(arr2));
left=1;
right=1;
flag=0;
for i=1:2*long_length
    if(left<=length(arr1))
       if right<=length(arr2)
        if (arr1(left)<=arr2(right))
        merge_set(i)=arr1(left)
        left=left+1;
        flag=1;
        end
       end
    else
        merge_set=[merge_set, arr2(right:length(arr2))]
        break
    end
    if(flag==0)
        if(right<=length(arr2))
            if(arr1(left)>arr2(right))
            merge_set(i)=arr2(right)
            right=right+1;
        end
        else
            merge_set=[merge_set,arr1(left:length(arr1))];
            break
        end
    end
    flag=0;
end    
end
