# MedTime — Assistente de Horários de Remédio

**App Android que lê a receita médica por OCR e cria alarmes personalizados por medicamento, mesmo com o app fechado.**

> Projeto de IA aplicada + Produto + Gestão de Projetos, construído com Vibe Coding — IA como pair programmer e co-arquiteto, com validação em dispositivo real.

**Autor:** Sidney Abreu Júnior — Especialista em IA | Gerente de Projetos de TI | Product Owner
**Status:** MVP funcional validado em dispositivo real
**Plataforma:** Android

---

## O problema

Quem toma vários remédios por dia, em horários diferentes, esquece ou confunde:

- Digitar cada remédio manualmente no celular é chato e dá erro
- Alarme comum do celular não sabe qual remédio é, nem a dose
- Se o app fechar, o alarme não toca e a pessoa perde a dose

Para idosos, pacientes crônicos e cuidadores, isso é risco real de saúde.

## A solução

O MedTime resolve em 3 passos:

1. **Fotografa a receita** — o app lê a receita com OCR
2. **Identifica medicamento, dose e horário** — e já deixa tudo pronto para revisar
3. **Cria alarmes inteligentes** — um alarme por medicamento, com nome, dose e horário, que funciona mesmo com o app fechado

## Funcionalidades

- [x] Leitura de receita por OCR com Google ML Kit
- [x] Cadastro de medicamento com nome, dose, intervalo e duração
- [x] Alarme personalizado por medicamento — toca mesmo com app fechado
- [x] Lista de medicamentos do dia com próximos horários
- [x] Edição e exclusão de medicamentos e alarmes
- [x] Interface simples, fonte grande, pensada para quem tem dificuldade visual
- [ ] Próximo: histórico de doses tomadas / perdidas
- [ ] Próximo: lembrete para cuidador via WhatsApp
- [ ] Próximo: exportar lista para PDF para levar ao médico

## Como foi construído — IA como pair programmer

Este projeto foi construído com **Vibe Coding**:

- Usei IA (Claude, 【entity-Copilot¦canonical_name=Copilot】, Gemini, Meta AI) como pair programmer e co-arquiteto de produto
- Orquestrei a IA para debugar um **BUILD FAILED crítico de desugaring no Android 16**, implementar OCR com Google ML Kit e criar um alarme que funciona mesmo com app fechado
- Todo o processo com prompts iterativos, validação em dispositivo real e governança técnica
- **Método:** IA acelerando a entrega, mas com arquitetura, conformidade e ROI garantidos

Isso é o que eu aplico em projetos de IA: ideia vira produto funcional em horas, não em meses.

## Stack

- **Linguagem:** Kotlin / Java
- **Plataforma:** Android (Android Studio)
- **OCR:** Google ML Kit — Text Recognition
- **Alarmes:** AlarmManager + WorkManager
- **UI:** Material Design, Flutter em protótipos iniciais
- **Gestão:** Jira, 【entity-GitHub¦canonical_name=GitHub】, Prompts iterativos com IA

## Como rodar o projeto

```bash
# 1. Clonar o repositório
git clone https://github.com/Sidney-abreu/medtime.git

# 2. Abrir no 【entity-Android¦canonical_name=Android】 Studio
# File > Open > selecionar a pasta medtime

# 3. Sincronizar Gradle
# Aguardar o sync terminar

# 4. Rodar em emulador ou dispositivo real
# Run > Run 'app' — recomendado testar em dispositivo real para validar o alarme
