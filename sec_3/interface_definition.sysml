package interface_definition{
    private import general_definition::*;
    private import port_definition::*;  
    
    interface def interface_1{
        end output:port_1;
        end input:~port_1;
    flow of item_1 from output.it1 to input.it1;
    }
    
}