gate_width=1000;
delay_start=-1000000;
delay_end=2000000;
total_delay=(delay_end-delay_start)/gate_width+1;
sample_N=3000;
gap_sample=zeros(1,sample_N);

% 
% for i=1:sample_N
%     gap_sample(i)=ch2_ns(i+1)-ch2_ns(i);
% end
% figure
% histogram(gap_sample)

gap_ref=2000;
%ch_missing=ch2_ns-((1:ch2_events)*gap_ref);

figure
%plot(ch_missing)
histogram(ch2_ns(1:sample_N)-ch1_ns(1:sample_N),2000)

