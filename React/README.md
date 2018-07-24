# React Application using Docker and Ansible

This is a very simple `create-react-app` using Docker and Ansible. 

I used Docker to build a hosting environment on localhost and Ansible for automation of everything

Just run `ansible-playbook start.yml` and enjoy :)

If something doesn't work, make sure that you have run `rm -rf docker-create-react-app`and deleted other docker images which may occupy the same port before raising an issue

### Possible troubleshoot

<ul>
<li> <code> rm -rf docker-create-react-app </code> </li>
<li> delete docker containers on the same port </li>
<li> <code> bash scripts/create_docker.sh && bash scripts/create_run.sh </code> </li>
</ul>

If those steps didn't help you, raise an issue. Thank you for collaboration
