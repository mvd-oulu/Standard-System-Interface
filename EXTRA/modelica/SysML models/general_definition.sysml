package general_definition{
    //private import attribute_definition::*;
    
    part def mass{
        attribute weight : ISQ::MassUnit;
        attribute position : ISQ::LengthUnit; 
        attribute velocity : ISQ::SpeedUnit;
        }
    part def osilator{
        attribute stifeness;
        attribute C_damp;
    }
    
    part def dynamic_system {
        attribute position : ISQ::LengthUnit; 
        attribute velocity : ISQ::SpeedUnit;
        

    }
    
    item def Force_dynamic {
        item fx {
            attribute value;
            attribute time;
        }
        item fy {
            attribute value;
            attribute time;
        }
        item fz {
            attribute value;
            attribute time;
        }
    }
    item def Velocity_dynamic{
        item vx {
            attribute value;
            attribute time;
        }
        item vy {
            attribute value;
            attribute time;
        }
        item vz {
            attribute value;
            attribute time;
        }
    }
    item def Position_dynamic{
        item px {
            attribute value;
            attribute time;
        }
        item py {
            attribute value;
            attribute time;
        }
        item pz {
            attribute value;
            attribute time;
        }
    }
    item def Acceleration_dynamic{
        item ax {
            attribute value;
            attribute time;
        }
        item ay {
            attribute value;
            attribute time;
        }
        item az {
            attribute value;
            attribute time;
        }
    }
    
}