Codegen Packages 
1. go to hub.getdbt.com. lots of packages to choose from.
2. Click on the package name and it shows installation and how to use. 
3. open a new file and paste the marco there, press compile. Copy the compile result to a new yml file. 



Refactor SQL for modularity
1. Migrating legacy code. Copy and paste to dbt studio models/legacy folder.
2. create folders under in staging folder using each schema name. Under each schema name folder, create yml file. Can use codegen package marco to generate source yml file.
3. replace all hardcode sources name with __source macro 
4. choosing a refactoring strategy. Copy and paste the model into a new file in marts. Here we perform refactoring. the new sql name is fct_cusotmer_order.sql with reference to the legacy file. 
5. cosmetic cleanups - can use format button to format file automatically for us. 
    - get rid of long syntax where we have to scroll. right click - toggle word wrap. 
    - best practice - having everything lower case. 选中全部sql，右击选中command pallete， 输入transform to lowercase。 
    - give some space for readability, 比如select statement前面空一行，case when等一些复杂的语法就用回车和缩进等格式。
6. CTE Groupings 
    - import CTEs: import sources, CTE name can be raw_xx。 把后面所有引用sources的地方全都改成引用imported CTEs。
    - logical CTEs: get rid of subqueries and pull those into CTEs.  
    - Final CTEs 
    - final select 

