# private-pypi-hub

Set up your own private PyPI server using pypiserver, a PyPI-compatible server, and Docker. We'll host the server on an AWS EC2 instance.

---

## Overview
- **EC2 Deployment**: Host your private PyPI server on Amazon EC2 instances
- **Docker Containerized**: Deploy pypiserver using Docker containers
- **Private Distribution**: Secure internal package management with pypiserver
- **CI/CD Integration**: Automated package building via GitHub Actions

---

## Architecture
- **EC2 Instance**: Runs the Docker container hosting pypiserver
- **Docker Container**: pypiserver application serving packages
- **Local Storage**: Package files stored on EC2 instance storage
- **GitHub Actions**: Automates building packages

---

## Features
- **PyPI-Compatible**: Full compatibility with pip and other Python package managers
- **Private & Secure**: Internal server accessible only to authorized users
- **Docker Deployment**: Easy containerized deployment of pypiserver
- **Automated Builds**: GitHub Actions for package building
- **Version Management**: Support for stable and development package versions

---

## Resources
- [pypiserver Documentation](https://github.com/pypiserver/pypiserver)
- [Python Packaging User Guide](https://packaging.python.org/)
- [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)
- [Docker Documentation](https://docs.docker.com/)
- [GitHub Actions](https://docs.github.com/en/actions)

---
```bash
username - jibbs
password - jibbs1234

python3 -m twine upload \
  --username jibbs \
  --password jibbs1234 \
  --repository-url http://localhost:8081/ \
  testpackage/dist/*

 python3 -m twine upload \
  --repository pypi-main \
  --config-file ./testpackage/.pypirc \
  testpackage/dist/* --verbose

 python3 -m twine upload \
  --repository pypi-dev \
  --config-file ./testpackage/.pypirc \
  testpackage/dist/* --verbose
```