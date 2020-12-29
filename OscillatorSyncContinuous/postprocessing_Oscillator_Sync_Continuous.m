%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: Synchronization of Oscillators with
% Continuous Measurements
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: postprocessing_Oscillator_Sync_Continuous
% Set of simulation files created and edited by 
% Yusheng Fang and Ricardo Sanfelice
%--------------------------------------------------------------------------

close all
figure(1)
plot(x1(:,1),x1(:,2),'b-')
grid on
hold on
plot(x2(:,1),x2(:,2),'g-')
hold on
plot(x3(:,1),x3(:,2),'y-')
hold on
plot(x4(:,1),x4(:,2),'r-')
legend('z_{1}', 'z_{2}', 'z_{3}','z_{4}')
xlabel ('z_{i},1')
ylabel ('z_{i},2')
hold off
figure(2)
error = zeros(length(t1), 1);
for i = 1:length(t1)
error(i) = norm(x1(i, :) - x2(i, :) + x1(i, :) - x3(i, :) + x1(i, :) - x4(i, :));
end
plot(t1, error)
grid on
hold on