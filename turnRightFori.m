for i = 1:2
    brick.MoveMotor('AB',50)
    pause(3);
    brick.StopMotor('AB','Brake')

    for j = 1:3
        brick.MoveMotorAngleRel('A', 40, 95, 'Brake'); 
        brick.WaitForMotor('A');
        pause(1);
    end

    brick.MoveMotorAngleRel('A', 40, 30, 'Brake'); 
          brick.WaitForMotor('A');
          pause(1);

    brick.MoveMotor('AB',50)
    pause(3);
    brick.StopMotor('AB','Brake')
end