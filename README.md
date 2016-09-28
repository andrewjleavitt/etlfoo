## Too see it in action:

- `ruby etls/mavenlink_to_netsuite_job_status.rb`

### State of the Union

- Define an initializer to start off the process
  - These are in the '/etls' directory
  - Since kiba will be parsing the etl script file in '/kiba/scripts', we need to preload all of our Source, Destination, and Transform classes
- Call the 'run' method on the kickoff class
- This class can inherit from some parent class in the future. The only thing that should change will the be name of the 'script' file that kiba parses.
