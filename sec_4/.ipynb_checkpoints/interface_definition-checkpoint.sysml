package interface_definition{
    private import general_definition::*;
    private import port_definition::*;  
    
    interface def trq_int{
        end output:mech_trq;
        end input:~mech_trq;
    flow of trq:mech_power from output.trq to input.trq;
    }
    interface def spe_int{
        end output:mech_spe;
        end input:~mech_spe;
    flow of spe:mech_power from output.spe to input.spe;
    }
    interface def vol_int{
        end output:elec_vol;
        end input:~elec_vol;
    flow of vol:elec_power from output.vol to input.vol;
    }
    interface def cur_int{
        end output:elec_cur;
        end input:~elec_cur;
    flow of cur:elec_power from output.cur to input.cur;
    }
    
    
    //data interfaces
    
    interface def ld_sgn_int{
        end output:ctrl_load;
        end input:~ctrl_load;
    flow of ld_sgn:control_signals from output.ld_sgn to input.ld_sgn;
    }
    
    interface def mon_vel_int{
        end output:mon_vel;
        end input:~mon_vel;
    flow of vel_sgn:control_signals from output.vel_sgn to input.vel_sgn;
    }
    
    interface def mon_soc_int{
        end output:mon_soc;
        end input:~mon_soc;
    flow of soc:control_signals from output.soc to input.soc;
    }
    
