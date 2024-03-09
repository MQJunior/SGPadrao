<?php

function downloadAndExtractZip($url, $extractPath)
{
    $zipFile = file_get_contents($url);

    if ($zipFile !== false) {
        $zip = new ZipArchive;
        if ($zip->open($extractPath, ZipArchive::CREATE) === true) {
            $zip->extractTo($extractPath);
            $zip->close();
            echo "Arquivo baixado e extraído com sucesso.\n";
        } else {
            echo "Erro ao abrir o arquivo ZIP.\n";
        }
    } else {
        echo "Erro ao baixar o arquivo do GitHub.\n";
    }
}

function getDatabaseCredentials()
{
    echo "Por favor, forneça as informações de configuração:\n";
    $nomeSistema = readline("Nome do Sistema: ");
    $localDir = readline("Local: \"" . __DIR__ . "\" <enter> ");
    if ($localDir == "")
        $localDir = __DIR__;
    $host = readline("Host do banco de dados: ");
    $username = readline("Usuário do banco de dados: ");
    $password = readline("Senha do banco de dados: ");
    $name = readline("Nome do banco de dados: ");

    return compact('nomeSistema', 'localDir', 'host', 'username', 'password', 'name');
}

function installSystem()
{
    // Carregue as configurações do arquivo JSON
    $configFile = 'config.json';
    $config = json_decode(file_get_contents($configFile), true);

    if ($config === null) {
        die("Erro ao carregar as configurações do arquivo JSON.\n");
    }

    // Diretório para extrair os arquivos

    // Solicite informações de conexão com o banco de dados
    $dbConfig = getDatabaseCredentials();
    $extractPath = $dbConfig['localDir'];
    // Baixe e extraia os arquivos do GitHub
    downloadAndExtractZip($config['github_link'], $extractPath);

    print_r($dbConfig);
    die(__FILE__ . ' > ' . __LINE__);
    // Adicione as informações do banco de dados ao arquivo de configuração
    $config['database'] = $dbConfig;
    file_put_contents($configFile, json_encode($config, JSON_PRETTY_PRINT));

    // Configurações adicionais de instalação
    // Exemplo: Configuração do banco de dados
    $dbHost = $dbConfig['host'];
    $dbUsername = $dbConfig['username'];
    $dbPassword = $dbConfig['password'];
    $dbName = $dbConfig['name'];

    // Faça o que for necessário com as informações do banco de dados
    // Exemplo: Configure a conexão com o banco de dados

    echo "Sistema instalado com sucesso!\n";
}

// Inicie o processo de instalação
installSystem();
