# DataFormats

Package to create common types header files from the L0MDT data format [spreadsheet](https://docs.google.com/spreadsheets/d/1oJh-NPv990n6AzXXZ7cBaySrltqBO-eGucrsnOx_r4s/edit#gid=1745105770)

Create header file
------------------

To trigger the pipeline that exports the spreadsheet in .csv and creates the header files you can run the pipeline from the CI/CD menu of the package by selecting Pipelines and then Run Pipeline. The pipeline is also triggered automaticaly upon a push or a merge.

## Downloading output files

Output files are generated only when the spreadsheet is changed. This will cause a new commit to the repository, and its hash will be incorporated in the output files as a constant value.

The output files are available only as `artifacts`, and they can be obtained in `CI/CD > Pipelines`. As explained above, there will be an attachement to the pipeline only when there was a change in the spreadsheet. Artifacts are kept in the pipeline for 6 months unless they are marked to be kept using the webinterface.

Output files cannot be include in the repository, because then the commit hash used would be displaced.

