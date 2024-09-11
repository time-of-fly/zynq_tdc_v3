ch1_fine2ns=zeros(1,193);
ch2_fine2ns=zeros(1,193);

for i=1:size(ch1_cal,1)
    percent=sum(ch1_cal(1:i,3));
    ch1_fine2ns(i+1)=percent/35;
end

for j=i+2:193
    ch1_fine2ns(j)=ch1_fine2ns(i+1);

end

for i=1:size(ch2_cal,1)
    percent=sum(ch2_cal(1:i,3));
    ch2_fine2ns(i+1)=percent/35;
end

for j=i+2:193
    ch2_fine2ns(j)=ch2_fine2ns(i+1);

end

%ch1_ns=zeros(1,ch1_events);
%ch2_ns=zeros(1,ch2_events);

ch1_ns=ch1_fine2ns(ch1_data_fine+1)+1000/350*double(bitshift(ch1_data,-8));
ch2_ns=ch2_fine2ns(ch2_data_fine+1)+1000/350*double(bitshift(ch2_data,-8));



% last_data = events(end);
% coarse_first=bitshift(first_data,-8);
% coarse_last=bitshift(last_data,-8);
% total_num=(coarse_last-coarse_first)/350*0.9375+1;
% missing=total_num+first_addr-TotalEvents
% double(missing)/double(TotalEvents)

