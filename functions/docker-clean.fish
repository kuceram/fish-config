function docker-clean
  # Stop all dockers
  if [ (docker ps -q) ]
    echo "killing all running docker containers:"
    docker kill (docker ps -q)
  else
    echo 'no running docker containers'
  end

  # Delete all stopped containers
  set -g stopped (docker ps -a -q)
  if set -g stopped
    echo "deleting all stopped containers:"
    docker rm (docker ps -a -q)
  else
    echo 'no docker containers to be delete'
  end

  # Delete all 'untagged/dangling' (<none>) images
  set -g untagged (docker images -q -f dangling=true)
  if set -g untegged
    echo "deleting all 'untagged/dangling' (<none>) images:"
    docker rmi (docker images -q -f dangling=true)
  else
    echo 'no docker 'untagged/dangling' images found to be delete'
  end

  # Delete ALL images
  set -g images (docker images -q)
  if set -g images
    echo "deleting all images:"
    docker rmi -f (docker images -q)
  else
    echo 'no docker images found to be delete'
  end
end
