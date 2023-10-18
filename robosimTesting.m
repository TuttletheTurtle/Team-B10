brick.MoveMotor('ABCD',50)
brick.MoveMotorAngleRel('ABCD',100,90)
brick.WaitForMotor('ABCD');
pause(2.5);
pause(2.5);
brick.StopMotor('ABCD','Coast')
