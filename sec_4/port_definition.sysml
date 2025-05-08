package port_definition{
    private import general_definition::*;
    
    //mech ports
    port def mech_trq{
        out item trq:mech_power;
    }
    port def mech_spe{
        out item spe:mech_power;
    }
    
    //elec ports
    port def elec_vol{
        out item vol:elec_power;
    }
    port def elec_cur{
        out item cur:elec_power;
    }
    
    //data ports
    port def ctrl_load{
        out item ld_sgn:control_signals;
    }
    
    //monitoring port
    port def mon_vel{
        out item vel_sgn:control_signals;
    }
    port def mon_soc{
        out item soc:control_signals;
    }
    port def mon_fuel{
        out item fuel_cons:control_signals;
    }
}