# README for project: Design of an automated assistive ROM device for children with CP.

The project titled: "An automated assistive range of motion training device for home use for children with cerebral palsy" makes use of the CAD-models, SIMULINK model and matlab code provided in this repository.

## Getting Started

These instructions will give you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
First of all, a Matlab environment (preferably R2022b) with the Simulink extension is necessary to run these files. For non-TU Delft students/employees, Matlab can be downloaded here: 
- [Dowload Matlab](https://nl.mathworks.com/store/?gclid=CjwKCAjwvdajBhBEEiwAeMh1U9jA01JvpdchiN7sCJfYlFx0Q6Hv_Id0KgkZlk-dMQNlQ1nteVlmqBoCn3kQAvD_BwE&ef_id=CjwKCAjwvdajBhBEEiwAeMh1U9jA01JvpdchiN7sCJfYlFx0Q6Hv_Id0KgkZlk-dMQNlQ1nteVlmqBoCn3kQAvD_BwE:G:s&s_kwcid=AL!8664!3!552213010978!p!!g!!get%20matlab&s_eid=ppc_69452703753&q=get%20matlab)
Be sure to also check the 'Simulink' extension during installation.

For TU Delft students/employees a free version of Matlab R2022b and Simulink extension can be downloaded here: 
- [Download Matlab TU Delft](https://software.tudelft.nl/402/)
An installation manual is also provided. Be sure to also check the 'Simulink' extension during installation. 

Secondly, for the CAD-models, a SOLIDWORKS environment needs to be installed. 
For TU Delft students/employees in mechanical engineering or industrial design, a free version of SOLIDWORKS can be downloaded here: 
- [Download SOLIDWORKS TU Delft](https://software.tudelft.nl/489/)

### Downloading files
In this repository you will find the Matlab, Simulink and SOLIDWORKS files necessary for obtaining the presented results in the paper. It is best to download all the files before starting with running, since some call upon others. The following files are presented with the following functions: 

- **Torque_plot.m** contains the code to regenerate the figure present in section VI.B, regarding the validation whether the applied motor torque is adequate to lift rotate the shoulder in the device.
- **Dynamic_Validation.m** contains the code to regenerate the figures present in section VI.C, regarding the validation of the control scheme in combination with the chosen motor when pushing the carriage forward while the shoulder rests on it. 
- **Control_Scheme.slx** contains the SIMULINK model of the PD-controller, the Plant (carriage + shoulder) and the desired shoulder angle trajectory, that is used for evaluating the controller in the **Dynamic_Validation.m** file.
- **Solidworks_pack_and_go** folder contains all CAD-drawings of the final design.

### Running the tests
For recreating the results, simply download all files and run the Matlab code. For observing the final design, place all Solidworks parts and the assembly (Concept_3_assem) in the same folder and open the assembly file in Solidworks.

## Built With

  - [Matlab R2022b](https://nl.mathworks.com/store/?gclid=CjwKCAjwvdajBhBEEiwAeMh1U9jA01JvpdchiN7sCJfYlFx0Q6Hv_Id0KgkZlk-dMQNlQ1nteVlmqBoCn3kQAvD_BwE&ef_id=CjwKCAjwvdajBhBEEiwAeMh1U9jA01JvpdchiN7sCJfYlFx0Q6Hv_Id0KgkZlk-dMQNlQ1nteVlmqBoCn3kQAvD_BwE:G:s&s_kwcid=AL!8664!3!552213010978!p!!g!!get%20matlab&s_eid=ppc_69452703753&q=get%20matlab) - Used to write all code files and create the Simulink model.
  - [Solidworks](https://www.solidworks.com/) - Used to create all CAD-models


## Authors
- **Karien ter Welle** - Contributed to the modelled design, created the Simulink model and wrote the Dynamic_Validation.m script. 
- **Mark Planken** - Contributed to the modelled design, created the SOLIDWORKS CAD models and wrote the Torque_plot.m script. 

## License

This project is licensed under the [BSD 3-Clause License](LICENSE.md)  - see the [LICENSE.md](LICENSE.md) file for
details

## Acknowledgments

 The authors would like to thank Gerwen Smit and Bob van Vliet for their feedback during the design and writing process and their informative lectures that shaped this design.