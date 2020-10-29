% Dynamic FCM
% Dynamic Fuzzy Cognitive Maps
clear all
clc
% Initial state of concepts
c=[1,1,1,0.5,1,1,1];
% Incidence matrix. Expert level
w=[0.0 0.6 0.0 0.2 0.0 0.0 0.0
0.0 0.0 0.7 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 0.0 0.8 0.0 0.0 0.0 0.0
0.0 0.0 0.0 0.0 0.0 -0.3 0.6
0.0 0.0 0.0 0.0 0.0 0.0 0.0
0.0 -0.5 0.0 0.0 0.0 0.0 0.0];
% Learning rate
alfa=0.1;
% Updating of concepts and weights
for k=1:5 % Loop of 5 iterations for concepts and weights
    c1=c*w;
for i = 1:7 % Transfer function to update concepts
  if ((c1(i)> 0) && (c1(i)< 1))
     c1(i)= c1(i);
  else
  if c1(i)< 0
      c1(i) = 0;
  else 
     c1(i)=1;
     if c1(i) == 0
         c1(i) = 1;
     end
  end 
  end
end
for i = 1:7 % Hebbian Learning of Concepts
    for j = 1:7
        if i==j
            dw=0;
        else
          dci= c1(i)-c(i);
          dcj = c1(j)-c(j);
          if (dci * dcj)> 0
              dw = alfa*dci*dcj;
          else
              dw = 0;
          end
        w(i,j) = w(i,j)+ alfa*dw;
        end
    end
end
  c=c1;
  estados = c % final states of concepts
end
% Final incidence matrix.
% Resulting incidence level between concepts 
