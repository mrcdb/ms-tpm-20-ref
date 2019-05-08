# MS TPM 2.0 Docker-based build & install

The `linux-build` branch includes additional files to build the MS TPM 2.0 Reference Implementation in a Docker-based environment.

The current Docker image is based on a x64 Ubuntu 18.04 LTS distribution.

## Prerequisites

* [Docker CE](https://docs.docker.com/install/) 
* [Docker Compose](https://docs.docker.com/compose/)

## Build the MS TPM 2.0 Reference Implementation

Just run the following command to build the MS TPM 2.0:

```
$ docker-compose up --build
```

When the process ends, the `tpm_server` binary is available under the
`build` directory.

## Install the MS TPM 2.0 Reference Implementation

The `tpm_server` binary requires super-user rights to run. You can
run it from the `build` folder or copy it in a system-wide execution
directory as follows:

```
# cp build/tpm_server /usr/sbin/
```

Now, the `tpm_server` application can be run as follows:

```
$ tpm_server
```

If the instantiation succeeds, you will see an output like this:

```
TPM command server listening on port 2321
Platform server listening on port 2322
```

**N.B** The MS TPM 2.0 Reference Implementation creates a file named
`NVChip` with the vTPM context data in the current directory.
