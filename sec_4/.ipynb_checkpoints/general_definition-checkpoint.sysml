package general_definition{
    part def vehicle {
        attribute mass;
        attribute class;
        }
    part def ice{
        attribute max_power;
        attribute max_torque;
    }
    part def motor{
        attribute max_power;
        attribute max_torque;
        }
    
    part def battery{
        attribute capacity;
        attribute max_voltage;
        }
    part def control_unit;
    
    item def mech_power;
    item def elec_power;
    item def control_signals;

}