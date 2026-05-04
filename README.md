# cPanel & WHM Enterprise Hardening

<div align="center">
  <p>Elite B2B Security Configurations for Corporate cPanel/WHM Server Management.</p>
  <p>
    <a href="#-english">🇺🇸 English</a> | 
    <a href="#-português">🇧🇷 Português</a>
  </p>
</div>

---

## 🇺🇸 English

### Enterprise Hosting Control Security
This repository contains the official **TAVARDT Agency** hardening templates for bare-metal servers and cloud instances managed via cPanel & WHM. As the industry standard for web hosting, cPanel is the primary target for automated malware. These configurations transform a vulnerable default WHM server into an isolated, B2B-grade infrastructure, preventing lateral attacks between hosted client accounts.

### Contents
- **`csf-hardening.conf`**: Advanced rules for the ConfigServer Security & Firewall (CSF). Implements connection rate limiting (Port Flooding), aggressive directory watching for web shells, and spam script alerts.
- **`php-security.ini`**: A brutal `disable_functions` list for WHM's MultiPHP Manager. This neutralizes 99% of PHP-based malware from executing operating system commands, securing the server even if a client's CMS is compromised.
- **`whm-tweak-automation.sh`**: A root-level bash script leveraging the WHM API (`whmapi1`) to instantly disable legacy vulnerabilities (like Anonymous FTP and User Compilers) and enforce maximum password strength.

### Implementation Guide
1. The `csf-hardening.conf` values should be carefully merged into `/etc/csf/csf.conf`. Always run `csf -r` to apply and test changes.
2. Run `whm-tweak-automation.sh` as the `root` user directly in the server terminal immediately after a fresh WHM installation.

### Contact & Services
Looking for elite B2B infrastructure and high-ticket digital engineering?
- **Website:** [ag.tavardt.com](https://ag.tavardt.com/)
- **Email:** contact@tavardt.com

---

## 🇧🇷 Português

### Segurança de Hospedagem Corporativa
Este repositório contém os templates oficiais de "Hardening" (blindagem) da **TAVARDT** para servidores dedicados e instâncias cloud gerenciadas via cPanel & WHM. Sendo o padrão da indústria, o cPanel é o alvo primário de malwares automatizados. Estas configurações transformam um servidor WHM vulnerável (padrão de fábrica) em uma infraestrutura isolada de nível B2B, prevenindo ataques laterais entre contas de clientes hospedados.

### Conteúdo
- **`csf-hardening.conf`**: Regras avançadas para o ConfigServer Security & Firewall (CSF). Implementa limite de taxa de conexões (prevenção contra Port Flooding), monitoramento agressivo de diretórios em busca de *web shells* e alertas de scripts de spam.
- **`php-security.ini`**: Uma lista brutal de `disable_functions` para o MultiPHP Manager do WHM. Isso neutraliza 99% dos malwares baseados em PHP, impedindo a execução de comandos do sistema operacional (garante a segurança do servidor mesmo se o CMS de um cliente for invadido).
- **`whm-tweak-automation.sh`**: Um script Bash executado como `root` que utiliza a API do WHM (`whmapi1`) para desativar instantaneamente vulnerabilidades de funções legadas (como FTP Anônimo e Compiladores de Usuário) e impor força máxima na criação de senhas.

### Guia de Implementação
1. Os valores do `csf-hardening.conf` devem ser mesclados cuidadosamente no arquivo `/etc/csf/csf.conf`. Sempre execute `csf -r` para aplicar e testar as alterações.
2. Execute o `whm-tweak-automation.sh` como usuário `root` diretamente no terminal do servidor, preferencialmente logo após uma instalação limpa do WHM.

### Contato & Serviços
Procurando por infraestrutura B2B de elite e engenharia digital high-ticket?
- **Site:** [ag.tavardt.com/br/](https://ag.tavardt.com/br/)
- **E-mail:** contato@tavardt.com
