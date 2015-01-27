cp -r ./C_U_S_T_O_M_E_R_jobs/ $2_jobs

cd $2_jobs

# Rename in each file name the string '$1' by '$2'
ls | perl -ne 'chomp; next unless -e; $o = $_; s/'$1'/'$2'/; next if -e; rename $o, $_';

# Change all words '$1's to '$2' in every .job file and keep backups
perl -p -i.bak -e 's/'$1'/'$2'/g' *.job

perl -p -i.bak -e 's/'$1'/'$2'/g' *.properties

#Remove .bak files created
rm -rf *.bak
