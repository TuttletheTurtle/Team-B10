%establish dsensors and data
brick.SetColorMode(3, 2);
color = brick.ColorCode(3);
distance = brick.UltrasonicDist(4);

%establish outer loop  to check if color is yellow 
% so code loops
while (color ~= 4)

    %loop for movement going to turn left here
    while (distance > 0)
        brick.MoveMotor('AB', -100)
    end
    
    %Decides whether turn is big enough to justify
    %right turn
    if (distance > 35 && distance < 80)

    end
   
    %detects red
    if (color == 5)

    end

    %detects yellow
    if (color == 4)
        
        %new loop to see if green is detected
        % after yellow
        while (color ~= 3)

        end

    end

end    
