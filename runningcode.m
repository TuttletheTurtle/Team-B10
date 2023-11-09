%establish dsensors and data
brick.SetColorMode(3, 2);
color = brick.ColorCode(3);
distance = brick.UltrasonicDist(4);

display(distance)

%establish outer loop so code loops
while (color ~= 4)

 %Move car forward if wall is nearby
        if (distance >= 5)
        brick.MoveMotor('AB',-100)

        %color code
        color = brick.ColorCode(3);
        if (color == 5)
            brick.StopMotor('A', 'Brake')
            brick.StopMotor('B', 'Brake')
            pause(2)
            brick.MoveMotor('AB', -50)
            pause(2)
        end
        if (color == 4)
            brick.StopMotor('A')
            brick.StopMotor('B')
            brick.MoveMotor('C',50)
            pause(1)
            brick.StopMotor('C')
            pause(2)
            
            while (color ~= 3)

                %Move car forward if wall is nearby
                if (distance >= 5)
                brick.MoveMotor('AB',-100)

                %color code
                color = brick.ColorCode(3);
                if (color == 5)
                brick.StopMotor('A', 'Brake')
                brick.StopMotor('B', 'Brake')
                pause(2)
                brick.MoveMotor('AB', -50)
                pause(2)
                end
                if (color == 4)
                    brick.StopMotor('A')
                    brick.StopMotor('B')
                    pause(2)
                    brick.MoveMotor('AB', -50)
                    pause(2)
                end

                pause(0.25);
                brick.StopMotor('AB','Brake')

                %turning code here, under movement
                reading = brick.TouchPressed(1);
                reading2 = brick.TouchPressed(2);

                if (reading  == 1 || reading2 == 1)
                    brick.StopMotor('AB','Brake')
                    brick.MoveMotor('AB',100)
                    pause(2);
                    brick.StopMotor('AB','Brake')
                    brick.MoveMotor('B', 50)
                    pause(6.01)
                    brick.StopMotor('AB','Brake')
                end
            
                end
            end
            if (color ==3)
                brick.StopMotor('AB')
            end
         end
        end

        pause(0.25);
        brick.StopMotor('AB','Brake')

         %turning code here, under movement
        reading = brick.TouchPressed(1);
        reading2 = brick.TouchPressed(2);

        if (reading  == 1 || reading2 == 1)
           brick.StopMotor('AB','Brake')
           brick.MoveMotor('AB',100)
           pause(2);
           brick.StopMotor('AB','Brake')
           brick.MoveMotor('A', 50)
           pause(6.01)
           brick.StopMotor('AB','Brake')
        end
            
end    