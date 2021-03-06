# Итоговая аттестация курса «Linux и инструменты DevOps»
* Цель и задачи: Проверить, что студенты могут выполнять все типовые работы на позиции devops-инженер.
* Инфраструктура: Среда для запуска приложения в контейнере (Ansible-playbook, Dockerfile, Flask, Nginx)

**Инструкция:** *Данная инструкция рассчитана на установку в ОС: Ubuntu 18.04 LTS, 20.04 LTS. 
* В консоли вызываем следующую команду:
`curl https://raw.githubusercontent.com/PaTrioTBuLDoG/attestationproject/main/pre_install.bash -o pre_install.bash && chmod +x pre_install.bash && ./pre_install.bash`
*С помощью команды скачивается скрипт Bash, добавляется возможность вызвать скрипт и исполняется сам скрипт.*
*Скрипт предустанавливает нужное программное обеспечение и зависимости, а также генерируют ssh ключи и выводит публичный ключ нам в консоль, для добавления его в репозиторий Git, а так же на те машины на которые мы будет с помощью ansible разворачивать проект, и в зключении выводит ссылку для скачивания проекта.*

**Описание проекта:**
* С помощью Ansible (ansible-playbook: docker-playbook.yaml) обновляется списки пакетов и сами пакеты, устанавливается Doker, python3-pip, Docker SDK for Python, собираются Docker образы Nginx и Flask (python).
* С образов созданных ранее запускаются контейнеры:
* Один контейнер с nginx настроеный на балансер Flask приложения.
* Два контейнера c Flask приложением.

*По умолчания ansible производит развёртывание проекта на localhost.*
*Если необходимо сделать развёртку проекта на удаленную машину, с машины куда был скачен проект, нужно изменить в файле inventory.yaml строку: `localhost ansibleuser=root`, вместо localhost нужно указать ip адрес удаленной машины, при необходимости изменить ansibleuser, на того пользователя под которым ansible будет разворачивать проект на удаленной машине. Не забываем добавить ssh бубличный ключ на удалённую машину.*

Комманда для вызова ansible и развёртования проекта: 
 `ansible-playbook -b -i attestationproject/inventory.yaml attestationproject/docker-playbook.yaml`
