# Ansible workstation

```text
ansible/
├── inventory/
│   ├── hosts
│   └── group_vars/
│       └── all.yml
├── playbooks/
│   ├── site.yml
│   └── roles/
│       └── role1/
│           ├── tasks/
│           ├── handlers/
│           ├── templates/
│           ├── files/
│           ├── vars/
│           └── defaults/
├── roles/
│   └── role2/
│       ├── tasks/
│       ├── handlers/
│       ├── templates/
│       ├── files/
│       ├── vars/
│       └── defaults/
└── ansible.cfg
```


In the provided file structure for an Ansible project, the inventory/ and group_vars/ directories are used to define hosts and group-specific variables, respectively. Here's how you can work with them:

Inventory (inventory/):
The hosts file within the inventory/ directory is used to define the hosts and groups in your infrastructure. Each host or group is listed with its associated connection parameters, such as IP address, username, password, etc.

You can define hosts and groups in the hosts file using INI or YAML format. For example:

📋 Copy code➕ Insert code
 [web_servers]
 server1 ansible_host=192.168.1.100 ansible_user=admin ansible_password=secret

 [db_servers]
 server2 ansible_host=192.168.1.200 ansible_user=admin ansible_password=secret

 [all:vars]
 ansible_connection=ssh
 ansible_ssh_private_key_file=/path/to/private_key

 [web_servers:vars]
 http_port=8080
In this example, the hosts server1 and server2 are added to the web_servers and db_servers groups, respectively. Connection parameters like ansible_host, ansible_user, and ansible_password are specified for each host. Additionally, variables can be defined globally under [all:vars] or specific to a group under [web_servers:vars].

Group Variables (group_vars/):
The group_vars/ directory is used to store group-specific variable files in YAML format.
Create a YAML file named after the group(s) defined in the hosts file. For example, group_vars/all.yml or group_vars/web_servers.yml.
Define variables in these files to be used by the hosts belonging to the corresponding group(s). For example: yaml --- http_port: 8080 db_host: database.example.com db_port: 3306
In this example, the http_port, db_host, and db_port variables are defined and can be accessed by hosts in the web_servers group.
By organizing hosts and variables in this way, you can easily manage and apply specific configurations to different groups of hosts in your Ansible project.