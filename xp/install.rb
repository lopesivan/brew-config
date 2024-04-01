depends_on 'bangsh' => :build
depends_on 'redis-bash' => :build

def install
  inreplace 'tasks/add.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/cat.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/copy.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/c.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/e.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/i.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/keys.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/link.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/ls.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/ls.sh.OLD', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/pop.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/push.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/rm.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/s.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'
  inreplace 'tasks/x.sh', '__REDIS_BASH_LIB__', '${HOME}/.linuxbrew/Cellar/redis-bash/1.0.0/redis-bash-lib'

  system 'make', "prefix=#{prefix}", 'install'
end
