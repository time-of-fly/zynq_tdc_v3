first_data=events(1);
last_data=events(end);
coarse_first=bitshift(first_data,-8);
coarse_last=bitshift(last_data,-8);
total_num=(coarse_last-coarse_first)/350*0.9375+1;

basic_gap=350/0.9375;
N=length(events);
gap_c=zeros(1,N-1);
lost_data_num=0;
rep_data_num=0;
events_c=bitshift(events,-8);
for i =1: N-1
    gap_c(i)=events_c(i+1)-events_c(i);
    if( gap_c(i)>basic_gap+4)
        lost_data_num=lost_data_num+1;
    end
    if( gap_c(i)==0)
        rep_data_num=rep_data_num+1;
    end
end
 