# FORT Validator in a Docker

Before using you need to read and agree [ARIN Relying Party Agreement](https://www.arin.net/resources/manage/rpki/rpa.pdf)
Running this means you fully agree and understand every RIR terms and conditions.

## How it works

FORT will start synchronising the ROAs from the 5 RIRs and after a couple minutes will open the port TCP 7754 to allow connections from your routers.
Please be patient when it starts running.

## How to run it

```bash
docker run -d --name fort_validator --restart unless-stopped -it -p 7754:7754 aweher/fort-validator:latest
```

## Example router configurations and general usage

[FORT Documentation Website](https://nicmx.github.io/FORT-validator/index.html)

## Special thanks

[NIC México](https://github.com/NICMx/FORT-validator), [LACNOG](https://www.lacnog.org) and [LACNIC](https://www.lacnic.net)
