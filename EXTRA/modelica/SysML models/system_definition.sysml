package system_definition{
    private import general_definition::*;
    private import port_definition::*;
    private import interface_definition::*;
    
    part mass_1dof:mass{
        port f:~ForcePort; 
        port fDrive:~ForcePort;
        port s:PositionPort;
        port v:VelocityPort;
        port a:AccelerationPort;
    }
    part springdamper : osilator{
       port f1:ForcePort;
       port s1:~PositionPort;
       port v1:~VelocityPort;    
   }


    interface int1:ForceInterface connect mass_1dof.f to springdamper.f1;
    interface int2:PositionInterface connect springdamper.s1 to mass_1dof.s;
    interface int3:VelocityInterface connect springdamper.v1 to mass_1dof.v;  
}