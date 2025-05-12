package interface_definition{
    private import general_definition::*;
    private import port_definition::*;
    
    interface def ForceInterface{
        end supplierPort : ForcePort;
        end consumerPort : ~ForcePort;
    flow of Force_dynamic from supplierPort.fy to consumerPort.fy;
    }
    interface def VelocityInterface{
        end supplierPort : VelocityPort;
        end consumerPort : ~VelocityPort;
    flow of Velocity_dynamic from supplierPort.vy to consumerPort.vy;
    }
    interface def PositionInterface{
        end supplierPort : PositionPort;
        end consumerPort : ~PositionPort;
    flow of Position_dynamic from supplierPort.py to consumerPort.py;
    }
    interface def AccelerationInterface{
        end supplierPort : AccelerationPort;
        end consumerPort : ~AccelerationPort;
    flow of Acceleration_dynamic from supplierPort.ay to consumerPort.ay;
    }   
}