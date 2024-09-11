clear

connected=0;
RPaddrValue = '192.168.137.220';
PortValue=1001;
startTDC=0;
TotalEvents=0;
first_data=uint64(0);
%last_data=first_data;
first_addr=0;
MAX_datasize=40000000;
all_data=zeros(1,MAX_datasize+1000000,"uint64");

if connected == 0 % try to connect
    %app.ConnectButton.Text = 'Connecting ...';
    try
        client = tcpclient(RPaddrValue,PortValue,'Timeout',5,'ConnectTimeout',5); % wait for max 5 seconds
        connected = 1; % connection established
        %app.ConnectButton.Text = 'Disconnect';
        %app.ConnectButton.BackgroundColor = 'r';
        %start(xadcTimer) % start monitoring timer
        
    catch err % failed
        err.identifier
        
    end
else % disconnect
    delete (client); % 'clear' the client object/property
    connected = 0;
    %stop(xadcTimer) % stop monitoring timer
end
%activeFields(app);
if(connected)
    
    %write(app.client, uint16(bitor(bitshift(3,8),app.startTDC)) ); % clear channel
    write(client, uint16(bitor(bitshift(1,8),startTDC)) ); % RUN
    pause(1);
    tic
    for i=1:6000
        write(client, uint16(bitor(bitshift(2,8),startTDC)) );
        Nevents = read(client,1,'uint64'); % how many timestamps are arriving
        if Nevents > 0
            events = read(client,Nevents,'uint64'); % collect received timestamps
            all_data(TotalEvents+1:TotalEvents+Nevents)=events;
            TotalEvents=TotalEvents+Nevents;
            if TotalEvents+Nevents>MAX_datasize
                break;
            end

            pause(0.5);
        end
        pause(0.1);
    end
    toc
end

%write(client, uint16(bitor(bitshift(3,8),startTDC)) ); % exit
delete (client); % 'clear' the client object/property
connected = 0;
%%
all_data=all_data(1:TotalEvents);
ch1_data=zeros(1,TotalEvents,"uint64");
ch2_data=zeros(1,TotalEvents,"uint64");
ch1_events=0;
ch2_events=0;
for i=1:TotalEvents
    tmp=all_data(i);
    if bitshift(tmp,-63,'uint64')==0
        ch1_events=ch1_events+1;
        ch1_data(ch1_events)=bitand(0x7fffffffffffffff,tmp);
    else
        ch2_events=ch2_events+1;
        ch2_data(ch2_events)=bitand(0x7fffffffffffffff,tmp);
    end

end
ch1_data=ch1_data(1:ch1_events);
ch2_data=ch2_data(1:ch2_events);

ch1_data_fine=bitand(ch1_data,0xffu64);
ch2_data_fine=bitand(ch2_data,0xffu64);

ch1_cal=tabulate(ch1_data_fine);
ch2_cal=tabulate(ch2_data_fine);



%%
