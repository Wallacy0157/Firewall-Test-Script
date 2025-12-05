# 🔥 Firewall Test Script (Windows .BAT)

Este repositório contém um script em **Batch (.bat)** projetado para realizar testes automatizados de validação de firewall em ambientes Windows.

O objetivo é verificar se o firewall está bloqueando a abertura de URLs externas, execução de binários locais e criação de múltiplas instâncias de processos.

---

## 📌 Funcionalidades

O script realiza repetidamente três testes principais:

1. **Abertura de URL externa**
   Verifica se o firewall impede o acesso à internet.

   ```bat
   start "" "https://www.youtube.com/watch?v=SbJN4dDcBzw"
   ```

2. **Execução do CMD**
   Verifica se o firewall ou políticas locais impedem a execução de consoles.

   ```bat
   start "" cmd.exe
   ```

3. **Execução de um binário local (Calculadora)**
   Testa bloqueios de execução de binários nativos.

   ```bat
   start "" calc.exe
   ```

Cada ciclo registra logs em um arquivo chamado **firewall_test.log**.

---

## 📝 Configurações

As principais variáveis configuráveis do script são:

```bat
set LOGFILE=%~dp0firewall_test.log
set INTERVALO=5
set URL_TESTE=https://www.youtube.com/watch?v=SbJN4dDcBzw
```

* **LOGFILE** → Caminho onde o log é salvo.
* **INTERVALO** → Tempo entre ciclos do teste (em segundos).
* **URL_TESTE** → Endereço utilizado para validar acesso externo.

---

## ▶️ Como usar

1. Baixe o arquivo `.bat`.
2. Execute-o como **Administrador**.
3. Um arquivo chamado **firewall_test.log** será criado no mesmo diretório.
4. O script rodará em loop infinito até ser encerrado manualmente.

---

## 📄 Log gerado

Cada execução cria um log semelhante a:

```
=============================================================
Teste iniciado em 05/12/2025 09:12:32
=============================================================
[05/12/2025 09:12:32] Iniciando ciclo de teste...
[05/12/2025 09:12:32] Abrindo URL de teste...
[05/12/2025 09:12:32] Executando CMD...
[05/12/2025 09:12:32] Abrindo Calculadora...
[05/12/2025 09:12:32] Ciclo concluído. Aguardando 5 segundos...
```

---

## 🧪 Objetivo do Script

Este script é útil para:

* validar configurações de firewall;
* testar bloqueio de execução de binários;
* verificar políticas de segurança locais;
* criar cenários repetitivos para auditoria.
