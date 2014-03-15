echo "Run in main directory sh aminer_sample/import.sh"
mvn test-compile exec:java -Dexec.mainClass="org.neo4j.batchimport.Importer" \
  -Dexec.args="aminer_sample/batch.properties target/aminer/graph.db aminer_sample/nodes.csv,aminer_sample/nodes2.csv aminer_sample/rels.csv,aminer_sample/rels2.csv"
