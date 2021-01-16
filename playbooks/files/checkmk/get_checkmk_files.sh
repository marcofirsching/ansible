#!/bin/bash
# FQDN or IP Address of CheckMK Server
cmk_server="omd.rzhas.de"

# Name of the CheckMK Site
cmk_site="rzhas"

scp ${cmk_server}:/opt/omd/sites/${cmk_site}/share/check_mk/agents/check_mk_agent.linux /etc/ansible/playbooks/files/checkmk/check_mk_agent
scp ${cmk_server}:/opt/omd/sites/${cmk_site}/share/check_mk/agents/plugins/mk_mysql /etc/ansible/playbooks/files/checkmk/plugins/mk_mysql
scp ${cmk_server}:/opt/omd/sites/${cmk_site}/share/check_mk/agents/plugins/mk_logwatch /etc/ansible/playbooks/files/checkmk/plugins/mk_logwatch
scp ${cmk_server}:/opt/omd/sites/${cmk_site}/share/check_mk/agents/plugins/mk_inventory.linux /etc/ansible/playbooks/files/checkmk/plugins/mk_inventory
scp ${cmk_server}:/opt/omd/sites/${cmk_site}/share/check_mk/agents/mk-job /etc/ansible/playbooks/files/mk-job
