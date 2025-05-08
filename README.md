# SysMLV2_FMI_PyFMI_Integration

This repository contains the source code and examples related to SysML V2 and simulation integration project which has done in University of Oulu.

## Setting Up the Anaconda Environment

To ensure that you have all the necessary dependencies and the correct Python version, follow these steps to set up the Conda environment:

### 1. Install Anaconda/Miniconda

If you don't have Anaconda or Miniconda installed, download and install it from the official website:
https://www.anaconda.com/download or https://docs.anaconda.com/miniconda/

### 2. Clone the Repository

Clone this repository to your local machine:


### 3. Create a Conda Environment

Use the provided environment.yml file to create a new Conda environment. This file includes all necessary dependencies.

**conda env create -f environment.yml**

### 4. Activate the Conda Environment

After the environment is created, activate it with:

**conda activate sysml_fmi_env**

### 5. Verify the Environment

You can verify that the environment has been set up correctly by checking the installed packages:

**conda list**

## Running the Application

Now that the environment is set up, you can run the application or scripts within this repository.

In the Thesis usecases folder:
### 1. Run the BindingConnectors SysMLV2 parser

To run the BindingConnectors SysMLV2 parser, follow these steps:

1. Navigate to the **src/parser** directory
2. Run the parser script: "**python binding_connectors_to_ssd_parser.py**"

This will parse the SysMLV2 binding connectors .txt file and generate the corresponding SSD file.

### 2. Run the PyFMI Simulation with Manual or SSD Parsed Model Connections

To run the PyFMI simulation, you can either manually connect FMUs or use the already parsed connections from SSD file. Follow these steps:

1. Navigate to the **src/simulation** directory
2. Run the PyFMI simulation script: "**python pyfmi_simulation_gui.py**"

In the Graphical User-Interface, you can load FMUs, manually connect them or load an SSD file with predefined connections, set initial conditions, and run the simulation. The results will be displayed within the GUI.

In the Paper usecases folder:
### 1. Run the SSI transformer 
Open the source folder and run the .py file from there. Locate the interface_definition.sysml and system_definition.syml files from wither sec 3 or sec 4 folder.

NOTE: to successfully run the models and simulation the name of the 'em' part should be change to 'motor' in the SSI transformer GUI tab. This name difference is set intentionally to test and demonstrate the name change functionality of the code.
### 2. Run the SSI simulator with Manual or SSD Parsed Model Connections

To run the PyFMI simulation, you can either manually connect FMUs or use the already parsed connections from SSD file. The simulations and the their generated SSD files are stored in "P1_SSP" and "P2_SSP" folders.

Note: To run these simulation AVL license is required.

In the Thesis usecases folder:

## Running Tests

This project includes a set of unit tests to ensure the correctness of the code. The tests can be run either all at once or individually.

### 1. Running All Tests at Once

You can run all tests using the unittest module with the following command:

**python -m unittest**

This command will run automatically discover and run all test files in the tests directory.

### 2. Running Individual Tests

To run a single test file, you can specify the test file in the command. For example, to run the tests in test_connection_dialog.py, use:

**python -m unittest tests.test_connection_dialog**

### 3. Viewing Test Results

Unittest will provide a summary of the test results in the console.
