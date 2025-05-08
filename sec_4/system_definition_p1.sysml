package system_definition_p1 {
    private import general_definition::*;
    private import port_definition::*;
    private import interface_definition::*;  
    
    part vehicle_p1:vehicle{
        attribute mass = 1500;
        attribute A_class;
        
        port driveline_trq_in:~mech_trq;
        port driveline_speed_out:mech_spe;
        port velocity_out:mon_vel;
        port load_out:ctrl_load;
    }
    
    part engine_p1:ice{
        attribute max_power=100;
        attribute max_torque=200;
        
        //mech connections
        port engine_trq_out:mech_trq;
        port engine_speed_in:~mech_spe;
        port em_trq_in:~mech_trq;
        port em_spe_out:mech_spe;
        //control connections
        port eng_ld_sgn_in:~ctrl_load;  
        port eng_fuel_consumption:mon_fuel;
    }
    
    part em:motor{
        attribute max_power=15;
        attribute max_torque=50;
        
        //mech connections
        port mtr_trq_out:mech_trq;
        port mtr_speed_in:~mech_spe;
        //elec connectioncs
        port vol_in:~elec_vol;
        port cur_out:elec_cur;
        //control connections
        port mtr_ld_sgn_in:~ctrl_load;        
    }
    
    part bat:battery{
        attribute capacity=5;
        attribute max_voltage=48;
        
        //elec connection
        port vol_out:elec_vol;
        port cur_in:~elec_cur;
        //control connections
        port soc_out:mon_soc;
    }
    
    part ctrl:control_unit{
        
        
        //out ports
        port en_ld_sgn_out:ctrl_load;
        port mtr_ld_sgn_out:ctrl_load;
        //in ports
        port vehicle_vel:~mon_vel;
        port soc_in:~mon_soc;
        port load_in:~ctrl_load;
    }
    
    //System connections
    interface int1:trq_int connect engine_p1.engine_trq_out to vehicle_p1.driveline_trq_in;
    interface int2:spe_int connect vehicle_p1.driveline_speed_out to engine_p1.engine_speed_in;
    interface int3:mon_vel_int connect vehicle_p1.velocity_out to ctrl.vehicle_vel;
    interface int4:ld_sgn_int connect vehicle_p1.load_out to ctrl.load_in;
    interface int5:trq_int connect em.mtr_trq_out to engine_p1.em_trq_in;
    interface int6:spe_int connect engine_p1.em_spe_out to em.mtr_speed_in;
    interface int7:ld_sgn_int connect ctrl.en_ld_sgn_out to engine_p1.eng_ld_sgn_in;
    interface int8:vol_int connect bat.vol_out to em.vol_in;
    interface int9:cur_int connect em.cur_out to bat.cur_in;
    interface int10:ld_sgn_int connect ctrl.mtr_ld_sgn_out to em.mtr_ld_sgn_in;
    interface int11:mon_soc_int connect bat.soc_out to ctrl.soc_in;

}