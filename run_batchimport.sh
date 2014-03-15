#Authored by Rui Dai
#this is a script to automaticlly excute the commands of batch-import

mvn clean compile exec:java -Dexec.mainClass="org.neo4j.batchimport.Importer" -Dexec.args="neo4j/data/graph.db nodes.csv rels.csv"
rm -rf target/db
mvn clean compile assembly:single

#remember to change the path of nodes.csv and rels.csv,if there are more than one nodes/rels.csv,
#separate them by ',' , but always separate the nodes and rels by space
java -server -Xmx4G -jar target/batch-import-jar-with-dependencies.jar target/db aminer/nodes.csv aminer/nodes2.csv aminer/rels.csv

du -sh target/db/

#remember to change the path of the import.sh
sh sample/import.sh

#remove the odd data and copy the latest generated data into the graph data foldder
rm -r $NEO4J_HOME/data/aminer
cp target/aminer $NEO4J_HOME/data
