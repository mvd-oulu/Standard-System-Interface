package system_definition{
    private import general_definition::*;
    private import port_definition::*;
    private import interface_definition::*;
    
    part mass_1dof : mass{
        port f : ~ForcePort; 
        port fDrive : ~ForcePort;
        port s : PositionPort;
        port v : VelocityPort;
        port a : AccelerationPort;
    }
    part springdamper : osilator{
       port f1 : ForcePort;
       port s1 : ~PositionPort;
       port v1 : ~VelocityPort;    
   }


    interface reaction : ForceInterface connect springdamper.f1 to mass_1dof.f ;
    interface position : PositionInterface connect mass_1dof.s to springdamper.s1;
    interface velocity : VelocityInterface connect mass_1dof.v to springdamper.v1;  
}