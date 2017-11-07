# utilities

(options recommended for regions in Korea)
#sudo sed -i 's/us.archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
#sudo sed -i 's/ap-northeast-2.ec2.archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
#sudo sed -i 's/(***).archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
#(***: your setting)

How to install:

sudo apt-get install -y git

git clone https://github.com/lunar456th/utilities.git

mv utilities/install.sh install.sh

chmod 775 install.sh

./install.sh



On installation, please follow the steps below.

maker 설치 시 Do want MAKER to try and build a local installation? 에서 yes



After installation, please follow the steps below.

cd AGAPE/programs/sga/src
sudo ./autogen.sh
sudo vi configure 후 BamReader 부분 찾아서 for문 전체 주석처리
./configure (g++ is required)

cd AGAPE/programs/RepeatMasker
perl ./configure 실행 후 엔터, 엔터, 엔터, /usr/local/bin/trf409.linux64, 2(rmblast), 엔터, /usr/bin, Y, 5(Done), 엔터



After moving the AGAPE directory to the location you want,
sed -i 's-/home/sj-/your/dir-g' /your/dir/AGAPE/configs.cf /your/dir/AGAPE/cfg_files/maker_exe.ctl

Before execution,
the second column of the header of the sequence file must be the length of the read.
if it is not, execute the following command.

AGAPE/bin/conv_scf_head [seq_file] > [seq_file2]

and use seq_file2.

Please execute in bourne shell(sh). (not bash)

execution

/your/dir/AGAPE/agape_annot.sh out_dir out_name seq_file /your/dir/AGAPE


Thank you.


###
sed 's/gi|[0-9]\{9\}|gb|//g' [seq_file] > [seq_file2]
sed 's/.1|/.1/g' [seq_file2] > [seq_file]
