# eval "$(ssh-agent -s)" # Start ssh-agent cache
# chmod 600 id_rsa # Allow read access to the private key
# ssh-add id_rsa # Add the private key to SSH

# ssh ahoag@192.168.1.171 <<EOF
#   cd /home/ahoag/Git/test_docker_travis
#   ./start_server.sh
# EOF
echo "success!"