connected=0;
RPaddrValue = '192.168.1.7';
PortValue=1001;
startTDC=0;
TotalEvents=0;
first_data=uint64(0);
%last_data=first_data;
first_addr=0;

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
    for i=1:30
        write(client, uint16(bitor(bitshift(2,8),startTDC)) );
        Nevents = read(client,1,'uint64'); % how many timestamps are arriving
        if Nevents > 0
            events = read(client,Nevents,'uint64'); % collect received timestamps
            if (first_data==0&&TotalEvents>6000000)
                first_data = events(1);
                first_addr = TotalEvents;
            end
            TotalEvents=TotalEvents+Nevents;
            pause(1);
        end
        pause(0.1);
    end
    toc
end

%write(client, uint16(bitor(bitshift(3,8),startTDC)) ); % exit
delete (client); % 'clear' the client object/property
connected = 0;
last_data = events(end);
coarse_first=bitshift(first_data,-8);
coarse_last=bitshift(last_data,-8);
total_num=(coarse_last-coarse_first)/350*0.9375+1;
missing=total_num+first_addr-TotalEvents
double(missing)/double(TotalEvents)