echo "Run in main directory sh aminer/import.sh"
mvn test-compile exec:java -Dexec.mainClass="org.neo4j.batchimport.Importer" \
  -Dexec.args="aminer/batch.properties target/aminer/graph.db aminer/nodes.csv,aminer/nodes2.csv aminer/rels.csv"
