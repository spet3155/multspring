Time = 10;
y1 = 1; y2 = 0; y3=3; y4 =0; y5 = 5; y6 = 0; 

%options = odeset('RelTol',1e-4,'AbsTol',[1e-4 1e-4 1e-5]);
%[T,Y] = ode45(@PhysicsFunction,[0 Time],[y1 y2],options);

%plot(T,Y(:,1),'-',T,Y(:,2),'-.',T,Y(:,3),'.')
[T,Y] = ode45(@M3K4,[0 Time],[y1 y2 y3 y4 y5 y6]);
plot(T,Y(:,1),'-',T,Y(:,3),'r',T,Y(:,5),'-')
