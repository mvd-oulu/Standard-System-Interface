package usage{
    private import general_definition::*;
    private import port_definition::*;
    private import interface_definition::*;  
    
    part sub_system1 : part_1 {
        port Out : port_1;
    }
    part sub_system2 : part_2 {
        port In : port_2;
    }
    
    interface sys_interface connect sub_system1.Out to sub_system2.In;
}