for i = 1:2
    brick.MoveMotor('ABCD',50)
    pause(3);
    brick.StopMotor('ABCD','Brake')

    for j = 1:3
        brick.MoveMotorAngleRel('AD', 20, -95, 'Brake'); 
        brick.WaitForMotor('AD');
        pause(1);
    end

    brick.MoveMotorAngleRel('AD', 20, -20, 'Brake'); 
          brick.WaitForMotor('AD');
          pause(1);

    brick.MoveMotor('ABCD',50)
    pause(3);
    brick.StopMotor('ABCD','Brake')
end