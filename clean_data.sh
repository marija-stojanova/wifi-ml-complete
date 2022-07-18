rename "s/.pcap.data/csv/" */*.data
rm */*complete_data*
sed -i 's/: //g' */*.csv
# all all the column names 
sed -i.csv 1i "time mcs nss bw rssi throughput_monitor datarate pktlost_ack nbpkt_monitor retry nbpkt_ack pktlost_seq_initial pktlost_seq_new bad_fcs" */*.csv
# uncomment this next line to remove the 5 first samples (in case they do not have converged values)
# sed -i 2,6d */*.csv
sed -i 's/ /\t/g' */*.csv
rm */*.csv.csv
sed -i 's/\t\t\t\t\t\t/\tNaN\tNan\tNaN\tNan\tNaN\tNaN/g' */*.csv

kako e sekoas prashanje dali vrede neshto da se naprave
bekapot na podatocite
da gi vide ona skriptite 
iminjata na podatocite ne gi smeni
ampdu brojot kolku pati mu kaza
od koga se bunish za presmetkite so ACK
