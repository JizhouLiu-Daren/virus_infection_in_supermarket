%Supermarket people flow
clear
clc


%Basic geometry
Ls = 15;    %supermarket length in m
Ws = 10;    %supermarket width in m

Wsh = 1;    %width of wall shelf in m

%Inlet
Inlet(1).x = 13;
Inlet(1).y = 1;
Inlet(1).L = 2;
Inlet(1).W = 2;

%Outlet
Outlet(1).x = 13;
Outlet(1).y = 4;
Outlet(1).L = 2;
Outlet(1).W = 1;

Outlet(2).x = 13;
Outlet(2).y = 6;
Outlet(2).L = 2;
Outlet(2).W = 1;

Outlet(3).x = 13;
Outlet(3).y = 6;
Outlet(3).L = 2;
Outlet(3).W = 1;

%Checkout
Check(1).x = 13;
Check(1).y = 3;
Check(1).L = 2;
Check(1).W = 1;

Check(2).x = 13;
Check(2).y = 5;
Check(2).L = 2;
Check(2).W = 1;

Check(3).x = 13;
Check(3).y = 7;
Check(3).L = 2;
Check(3).W = 1;

%Cirbular stands
Stand(1).x = 4;
Stand(1).y = 3;
Stand(1).r = 1;

Stand(2).x = 4;
Stand(2).y = 7;
Stand(2).r = 1;

%Rectangular booth
Booth(1).x = 6;
Booth(1).y = 2;
Booth(1).L = 1;
Booth(1).W = 2;

Booth(2).x = 6;
Booth(2).y = 6;
Booth(2).L = 1;
Booth(2).W = 2;

Booth(3).x = 8;
Booth(3).y = 2;
Booth(3).L = 1;
Booth(3).W = 2;

Booth(4).x = 8;
Booth(4).y = 6;
Booth(4).L = 1;
Booth(4).W = 2;

Booth(5).x = 10;
Booth(5).y = 2;
Booth(5).L = 1;
Booth(5).W = 2;

Booth(6).x = 10;
Booth(6).y = 6;
Booth(6).L = 1;
Booth(6).W = 2;

%Wall shelf
South_wall_x = [0:Ls];
South_wall_y = ones(Ls+1,1)*Wsh;

West_wall_x = ones(Ws+1,Wsh);
West_wall_y = [0:Ws];       

North_wall_x = [0:Ls];
North_wall_y = ones(Ls+1,1)*(Ws-Wsh);

%checkout
%1
Check1_south_x = [Check(1).x:Check(1).x+Check(1).L];
Check1_south_y = Check(1).y*ones(Check(1).L+1,1);

Check1_west_x = Check(1).x*ones(Check(1).W+1,1);
Check1_west_y = [Check(1).y:Check(1).y+Check(1).W];

Check1_north_x = [Check(1).x:Check(1).x+Check(1).L];
Check1_north_y = (Check(1).y+Check(1).W)*ones(Check(1).L+1,1);

%2
Check2_south_x = [Check(2).x:Check(2).x+Check(2).L];
Check2_south_y = Check(2).y*ones(Check(2).L+1,1);

Check2_west_x = Check(2).x*ones(Check(2).W+1,1);
Check2_west_y = [Check(2).y:Check(2).y+Check(2).W];

Check2_north_x = [Check(2).x:Check(2).x+Check(2).L];
Check2_north_y = (Check(2).y+Check(2).W)*ones(Check(2).L+1,1);

%3
Check3_south_x = [Check(3).x:Check(3).x+Check(3).L];
Check3_south_y = Check(3).y*ones(Check(3).L+1,1);

Check3_west_x = Check(3).x*ones(Check(3).W+1,1);
Check3_west_y = [Check(3).y:Check(3).y+Check(3).W];

Check3_north_x = [Check(3).x:Check(3).x+Check(3).L];
Check3_north_y = (Check(3).y+Check(3).W)*ones(Check(3).L+1,1);

%rectangular booth
%1
Booth1_south_x = [Booth(1).x:Booth(1).x+Booth(1).L];
Booth1_south_y = Booth(1).y*ones(Booth(1).L+1,1);

Booth1_west_x = Booth(1).x*ones(Booth(1).W+1,1);
Booth1_west_y = [Booth(1).y:Booth(1).y+Booth(1).W];

Booth1_north_x = [Booth(1).x:Booth(1).x+Booth(1).L];
Booth1_north_y = (Booth(1).y+Booth(1).W)*ones(Booth(1).L+1,1);

Booth1_east_x = (Booth(1).x+Booth(1).L)*ones(Booth(1).W+1,1);
Booth1_east_y = [Booth(1).y:Booth(1).y+Booth(1).W];

%2
Booth2_south_x = [Booth(2).x:Booth(2).x+Booth(2).L];
Booth2_south_y = Booth(2).y*ones(Booth(2).L+1,1);

Booth2_west_x = Booth(2).x*ones(Booth(2).W+1,1);
Booth2_west_y = [Booth(2).y:Booth(2).y+Booth(2).W];

Booth2_north_x = [Booth(2).x:Booth(2).x+Booth(2).L];
Booth2_north_y = (Booth(2).y+Booth(2).W)*ones(Booth(2).L+1,1);

Booth2_east_x = (Booth(2).x+Booth(2).L)*ones(Booth(2).W+1,1);
Booth2_east_y = [Booth(2).y:Booth(2).y+Booth(2).W];

%3
Booth3_south_x = [Booth(3).x:Booth(3).x+Booth(3).L];
Booth3_south_y = Booth(3).y*ones(Booth(3).L+1,1);

Booth3_west_x = Booth(3).x*ones(Booth(3).W+1,1);
Booth3_west_y = [Booth(3).y:Booth(3).y+Booth(3).W];

Booth3_north_x = [Booth(3).x:Booth(3).x+Booth(3).L];
Booth3_north_y = (Booth(3).y+Booth(3).W)*ones(Booth(3).L+1,1);

Booth3_east_x = (Booth(3).x+Booth(3).L)*ones(Booth(3).W+1,1);
Booth3_east_y = [Booth(3).y:Booth(3).y+Booth(3).W];

%4
Booth4_south_x = [Booth(4).x:Booth(4).x+Booth(4).L];
Booth4_south_y = Booth(4).y*ones(Booth(4).L+1,1);

Booth4_west_x = Booth(4).x*ones(Booth(4).W+1,1);
Booth4_west_y = [Booth(4).y:Booth(4).y+Booth(4).W];

Booth4_north_x = [Booth(4).x:Booth(4).x+Booth(4).L];
Booth4_north_y = (Booth(4).y+Booth(4).W)*ones(Booth(4).L+1,1);

Booth4_east_x = (Booth(4).x+Booth(4).L)*ones(Booth(4).W+1,1);
Booth4_east_y = [Booth(4).y:Booth(4).y+Booth(4).W];

%5
Booth5_south_x = [Booth(5).x:Booth(5).x+Booth(5).L];
Booth5_south_y = Booth(5).y*ones(Booth(5).L+1,1);

Booth5_west_x = Booth(5).x*ones(Booth(5).W+1,1);
Booth5_west_y = [Booth(5).y:Booth(5).y+Booth(5).W];

Booth5_north_x = [Booth(5).x:Booth(5).x+Booth(5).L];
Booth5_north_y = (Booth(5).y+Booth(5).W)*ones(Booth(5).L+1,1);

Booth5_east_x = (Booth(5).x+Booth(5).L)*ones(Booth(5).W+1,1);
Booth5_east_y = [Booth(5).y:Booth(5).y+Booth(5).W];

%6
Booth6_south_x = [Booth(6).x:Booth(6).x+Booth(6).L];
Booth6_south_y = Booth(6).y*ones(Booth(6).L+1,1);

Booth6_west_x = Booth(6).x*ones(Booth(6).W+1,1);
Booth6_west_y = [Booth(6).y:Booth(6).y+Booth(6).W];

Booth6_north_x = [Booth(6).x:Booth(6).x+Booth(6).L];
Booth6_north_y = (Booth(6).y+Booth(6).W)*ones(Booth(6).L+1,1);

Booth6_east_x = (Booth(6).x+Booth(6).L)*ones(Booth(6).W+1,1);
Booth6_east_y = [Booth(6).y:Booth(6).y+Booth(6).W];

%circular stands
theta = [0:0.01:2*pi];
%1
Stand1_x = Stand(1).x+Stand(1).r*cos(theta);
Stand1_y = Stand(1).y+Stand(1).r*sin(theta);

%2
Stand2_x = Stand(2).x+Stand(2).r*cos(theta);
Stand2_y = Stand(2).y+Stand(2).r*sin(theta);

%selling spots
selling_points = zeros(60,2);

selling_points(1,:) = [12 1];
selling_points(2,:) = [10 1];
selling_points(3,:) = [8 1];
selling_points(4,:) = [6 1];
selling_points(5,:) = [4 1];
selling_points(6,:) = [2 1];
selling_points(7,:) = [1 2];
selling_points(8,:) = [1 4];
selling_points(9,:) = [1 6];
selling_points(10,:) = [1 8];
selling_points(11,:) = [2 9];
selling_points(12,:) = [4 9];
selling_points(13,:) = [6 9];
selling_points(14,:) = [8 9];
selling_points(15,:) = [10 9];
selling_points(16,:) = [12 9];
selling_points(17,:) = [11 2];
selling_points(18,:) = [11 3];
selling_points(19,:) = [11 4];
selling_points(20,:) = [10 4];
selling_points(21,:) = [10 3];
selling_points(22,:) = [10 2];
selling_points(23,:) = [9 2];
selling_points(24,:) = [9 3];
selling_points(25,:) = [9 4];
selling_points(26,:) = [8 4];
selling_points(27,:) = [8 3];
selling_points(28,:) = [8 2];
selling_points(29,:) = [7 2];
selling_points(30,:) = [7 3];
selling_points(31,:) = [7 4];
selling_points(32,:) = [6 4];
selling_points(33,:) = [6 3];
selling_points(34,:) = [6 2];
selling_points(35,:) = [11 6];
selling_points(36,:) = [11 7];
selling_points(37,:) = [11 8];
selling_points(38,:) = [10 8];
selling_points(39,:) = [10 7];
selling_points(40,:) = [10 6];
selling_points(41,:) = [9 6];
selling_points(42,:) = [9 7];
selling_points(43,:) = [9 8];
selling_points(44,:) = [8 8];
selling_points(45,:) = [8 7];
selling_points(46,:) = [8 6];
selling_points(47,:) = [7 6];
selling_points(48,:) = [7 7];
selling_points(49,:) = [7 8];
selling_points(50,:) = [6 8];
selling_points(51,:) = [6 7];
selling_points(52,:) = [6 6];
selling_points(53,:) = [4 2];
selling_points(54,:) = [5 3];
selling_points(55,:) = [4 4];
selling_points(56,:) = [3 3];
selling_points(57,:) = [4 6];
selling_points(58,:) = [5 7];
selling_points(59,:) = [4 8];
selling_points(60,:) = [3 7];





%outlet spot
outlet_spot = zeros(3,2);
outlet_spot(1,:) = [16 4.5];
outlet_spot(2,:) = [16 6.5];
outlet_spot(3,:) = [16 8.5];

%Disease
Ninf = 1000;
N_inf_total = 0;
range_inf = 0.5;
rate_inf = 0.1;

%Time variable
dt = 0.01;  %time step of motion simulation in s
T_total = 100;    %in second
t_sim = 0;

%person variable
%person{x,y}
dt_p = 10;
Np = 0;
Np_total = 0;
t_counter = 0;
p_counter = 0;
while t_sim<T_total
    %generate person at the inlet
    t_counter = t_counter + 1;
    p_counter = p_counter + 1;
    if t_counter==1000
        t_counter = 1;
        Np = Np + 1;
        Np_total = Np_total + 1;
        %initial position
        person(Np).x = rand*2 + 13;
        person(Np).y = rand*2 + 1;
        person(Np).xim = person(Np).x;
        person(Np).yim = person(Np).y;
        %things to buy
        num_buy = ceil(10*rand);
        
        person(Np).buy_count = 1;
            %generate series of things to buy
            jj = 1;
            while jj<=num_buy
                num = ceil(60*rand);
                if jj>1
                    c1 = 1;
                   for kk=1:jj-1
                       c1 = c1&&(selling_points(num,1)~=person(Np).buy(kk,1)||selling_points(num,2)~=person(Np).buy(kk,2));
                   end
                   if c1
                       person(Np).buy(jj,1) = selling_points(num,1);
                       person(Np).buy(jj,2) = selling_points(num,2);  
                   else
                       jj = jj - 1;
                   end
                else
                    person(Np).buy(jj,1) = selling_points(num,1);
                    person(Np).buy(jj,2) = selling_points(num,2);     
                    
                end
                jj = jj + 1;
            end
        %outlet position  added to the array of buy
        out = ceil(3*rand);
        person(Np).buy(num_buy+1,1) = outlet_spot(out,1);
        person(Np).buy(num_buy+1,2) = outlet_spot(out,2);
        person(Np).num_buy = num_buy + 1;
        
        %disease
%by rate
%         rate = ceil(Ninf*rand);
%         if rate ==Ninf
%             person(Np).inf = 1;
%         else
%             person(Np).inf = 0;
%         end
     
        %by given number
        if Np==6
            person(Np).inf = 1;
        else
            person(Np).inf = 0;
        end
        
    end
    
    
    %update person position
    for ii=1:Np
        %velocity of a person
        dir = [person(Np).buy(person(Np).buy_count,1)-person(ii).x person(Np).buy(person(Np).buy_count,2)-person(ii).y];
        dir = dir/norm(dir)*2;
        u = dir(1)+(rand*2-1)*3;
        v = dir(2)+(rand*2-1)*3;

        %check region
        %inlet
        c1 = person(ii).x>=Inlet(1).x;
        c2 = person(ii).x<=Inlet(1).x+Inlet(1).L;
        c3 = person(ii).y>=Inlet(1).y;
        c4 = person(ii).y<=Inlet(1).y+Inlet(1).W;
        if c1&&c2&&c3&&c4
            u = -abs(u);
            v = 0;
        end
        
        %outlet
        for jj=1:3
            c1 = person(ii).x>=Outlet(jj).x;
            c2 = person(ii).x<=Outlet(jj).x+Outlet(jj).L;
            c3 = person(ii).y>=Outlet(jj).y;
            c4 = person(ii).y<=Outlet(jj).y+Outlet(jj).W;        
            if c1&&c2&&c3&&c4;            
                u = abs(u)*0.5;
                v = 0;
            end
        end
        
        %pre-update location
        person(ii).xim = person(ii).x + u*dt;
        person(ii).yim = person(ii).y + v*dt;
        
        
        %check walls
        %wall shelf
             %South
             if person(ii).yim<1
                  v = abs(v); 
             end
             
             %North
             if person(ii).yim>9
                  v = -abs(v);
             end             
             
             %West
             if person(ii).xim<1
                 u = abs(u);
             end
             
        %circular stands
             for jj=1:2
                 if sqrt((person(ii).xim-Stand(jj).x)^2+(person(ii).yim-Stand(jj).y)^2)<Stand(jj).r
                     u = -u;
                     v = -v;
                 end
             end
             
        %Rectangular booth
            for jj=1:6
                c1 = person(ii).xim>Booth(jj).x;
                c2 = person(ii).xim<Booth(jj).x + Booth(jj).L;
                c3 = person(ii).yim>Booth(jj).y;
                c4 = person(ii).yim<Booth(jj).y + Booth(jj).W; 
                if c1&&c2&&c3&&c4
                     u = -u;
                     v = -v;  
                end
            end
            
         %checkout counter   
            for jj=1:3
                c1 = person(ii).xim>Check(jj).x;
                c2 = person(ii).xim<Check(jj).x + Check(jj).L;
                c3 = person(ii).yim>Check(jj).y;
                c4 = person(ii).yim<Check(jj).y + Check(jj).W; 
                if c1&&c2&&c3&&c4
                     u = -u;
                     v = -v;  
                end
            end  
            
        %update 
        person(ii).x = person(ii).x + u*dt;
        person(ii).y = person(ii).y + v*dt;
  
        %check if particle has bought the current thing
        if sqrt((person(Np).buy(person(Np).buy_count,1)-person(ii).x)^2+(person(Np).buy(person(Np).buy_count,2)-person(ii).y)^2)<0.1
            person(Np).buy_count = person(Np).buy_count + 1;
        end
    end
    
    
    
    %judge wheteher the particle is out or not, if out delete it
    for ii=1:Np
        if person(ii).x>Ls
            for jj=ii:Np-1
                person(jj) = person(jj+1);
            end
            Np = Np - 1;
        end
    end
    
    %Disease check
    for ii=1:Np-1
       for jj=ii+1;Np
           %
           if sqrt((person(ii).x-person(jj).x)^2+(person(ii).y-person(jj).y)^2)<range_inf&&(person(ii).inf==1||person(jj).inf==1)
               if rand<rate_inf
                   person(ii).inf=1;
                   person(jj).inf=1;
               end
           end
       end
    end
    
    
    N_inf = 0;
    for ii=1:Np
        if person(ii).inf == 1
            N_inf = N_inf + 1;
            N_inf_total = N_inf_total + 1;
        end
        
    end
    
    
    t_sim = t_sim + dt;

    %output
    if p_counter==100   %output every second
       p_counter = 1;
     
        Np
        N_inf_total
        %plot markect
           figure(1)
        axis([0 20 0 Ws]);
        grid on
        hold on
        plot(South_wall_x,South_wall_y,'k')
        plot(West_wall_x,West_wall_y,'k')
        plot(North_wall_x,North_wall_y,'k')
        plot(Check1_south_x,Check1_south_y,'k')
        plot(Check1_west_x,Check1_west_y,'k')
        plot(Check1_north_x,Check1_north_y,'k')
        plot(Check2_south_x,Check2_south_y,'k')
        plot(Check2_west_x,Check2_west_y,'k')
        plot(Check2_north_x,Check2_north_y,'k')
        plot(Check3_south_x,Check3_south_y,'k')
        plot(Check3_west_x,Check3_west_y,'k')
        plot(Check3_north_x,Check3_north_y,'k')
        plot(Booth1_south_x,Booth1_south_y,'k')
        plot(Booth1_west_x,Booth1_west_y,'k')
        plot(Booth1_north_x,Booth1_north_y,'k')
        plot(Booth1_east_x,Booth1_east_y,'k')
        plot(Booth2_south_x,Booth2_south_y,'k')
        plot(Booth2_west_x,Booth2_west_y,'k')
        plot(Booth2_north_x,Booth2_north_y,'k')
        plot(Booth2_east_x,Booth2_east_y,'k')       
        plot(Booth3_south_x,Booth3_south_y,'k')
        plot(Booth3_west_x,Booth3_west_y,'k')
        plot(Booth3_north_x,Booth3_north_y,'k')
        plot(Booth3_east_x,Booth3_east_y,'k') 
        plot(Booth4_south_x,Booth4_south_y,'k')
        plot(Booth4_west_x,Booth4_west_y,'k')
        plot(Booth4_north_x,Booth4_north_y,'k')
        plot(Booth4_east_x,Booth4_east_y,'k')
        plot(Booth5_south_x,Booth5_south_y,'k')
        plot(Booth5_west_x,Booth5_west_y,'k')
        plot(Booth5_north_x,Booth5_north_y,'k')
        plot(Booth5_east_x,Booth5_east_y,'k')
        plot(Booth6_south_x,Booth6_south_y,'k')
        plot(Booth6_west_x,Booth6_west_y,'k')
        plot(Booth6_north_x,Booth6_north_y,'k')
        plot(Booth6_east_x,Booth6_east_y,'k')
        plot(Stand1_x,Stand1_y,'k')
        plot(Stand2_x,Stand2_y,'k')
        plot(selling_points(:,1),selling_points(:,2),'square')
        for jj=1:Np
           hold on
           if person(jj).inf==1
               plot(person(jj).x,person(jj).y,'diamond')
           else
               plot(person(jj).x,person(jj).y,'o')
           end
           
        end
        pause(0.5)
        close(figure(1))        
    end
end
 

N_inf_total
Np_total
