package port_definition{
    private import general_definition::*;
    
    port def ForcePort{
        out item fx;
        out item fy;
        out item fz;
        in item fx;
        in item fy;
        in item fz;
    }
    port def VelocityPort{
        out item vx;
        out item vy;
        out item vz;
        in item vx;
        in item vy;
        in item vz;
    }
    port def PositionPort{
        out item px;
        out item py;
        out item pz;
        in item px;
        in item py;
        in item pz; 
    }
    port def AccelerationPort{
        out item ax;
        out item ay;
        out item az;
        in item ax;
        in item ay;
        in item az; 
    }
}