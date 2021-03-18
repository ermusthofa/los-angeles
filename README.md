# LA Challenges

### What this repository covers
- [x] Setup up and run flask apps on Vagrant VM.
- [x] The provisioner should clone into the VM under `/webapps/devops`.
- [ ] You should not need to change the app code in any way.
- [x] The app should be running as a non-privileged user.
- [x] The app should be automatically restarted if crashes or if killed.
- [x] The app should maximize all of the available CPUs (have [Vagrant virtualize multiple CPUs](https://www.vagrantup.com/docs/virtualbox/configuration.html))
- [x] The related logs should be rotated.
- [x] Timezone should be in UTC.

### Environment used during development:
* Vagrant: 2.2.14
* Ansible: 2.10.5
* Virtualbox: 6.1.16
