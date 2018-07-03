class Bootstrap
  attr :os, :version, :container, :arch

  def initialize(os, version, arch, container)
    @os = os
    @version = version
    @arch = arch
    @container = container
  end

  def run
    system ("sudo debootstrap --variant=minbase --arch #{@arch} #{@version} #{container.path} http://archive.ubuntu.com/ubuntu/")
  end
end
