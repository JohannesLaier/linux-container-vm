require 'sys/proctable'

class Chroot
  attr :image

  def initialize(image)
    @image = image
    prepere()
  end

  def chroot_command
    return "chroot #{@image.path} "
  end

  def prepere
    proc_path = "#{@image.path}/proc/"
    if !File.exist?(proc_path)
      system ("mount -t proc proc #{proc_path}")
    end
    sysfs_path = "#{@image.path}/sysfs/"
    if !File.exist?(sysfs_path)
      system ("mount -t sysfs sysfs #{sysfs_path}")
    end
    dev_path = "#{@image.path}/dev/"
    if !File.exist?(dev_path)
      system ("mount -o bind /dev #{dev_path}")
    end
  end

  def exec(command, fork_proc = false)
    exec_command = chroot_command() + "#{command}"
    if fork_proc
      pid = Process.spawn(exec_command, :out=>"/dev/null")
      Process.detach(pid)
      return pid
    else
      system (exec_command)
    end
    return 0
  end

  def exec_as(user, command)
    system (chroot_command + "su #{user} -c '#{command}'")
  end
end
