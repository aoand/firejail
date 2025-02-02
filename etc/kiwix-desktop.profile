# Firejail profile for kiwix-desktop
# Description: view/manage ZIM files
# This file is overwritten after every install/update
# Persistent local customizations
include kiwix-desktop.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.local/share/kiwix
noblacklist ${HOME}/.local/share/kiwix-desktop

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.local/share/kiwix
mkdir ${HOME}/.local/share/kiwix-desktop
whitelist ${HOME}/.local/share/kiwix
whitelist ${HOME}/.local/share/kiwix-desktop
include whitelist-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
netfilter
# no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
# nosound
notv
nou2f
novideo
protocol unix,inet,inet6,netlink
seccomp.drop @clock,@cpu-emulation,@debug,@module,@obsolete,@raw-io,@reboot,@resources,@swap,acct,add_key,bpf,fanotify_init,io_cancel,io_destroy,io_getevents,io_setup,io_submit,ioprio_set,kcmp,keyctl,mount,name_to_handle_at,nfsservctl,ni_syscall,open_by_handle_at,personality,pivot_root,process_vm_readv,ptrace,remap_file_pages,request_key,setdomainname,sethostname,syslog,umount,umount2,userfaultfd,vhangup,vmsplice
shell none

disable-mnt
private-cache
private-dev
private-etc alsa,alternatives,asound.conf,ca-certificates,crypto-policies,fonts,hostname,hosts,ld.so.cache,machine-id,pki,pulse,resolv.conf,ssl
private-tmp
