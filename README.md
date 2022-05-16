# PrismaWebhooks
LR Open Collector Pipeline for Prisma Webhooks

## Installation

If you have not already installed ocpipeline and lrjq, follow the documentation here:

https://docs.logrhythm.com/docs/OCbeats/logrhythm-open-collector/create-custom-open-collector-pipelines

Copy the PrismaWebhooks folder to your Open Collector in the install users home directory (should be /home/logrhythm/)
Run the following:
```
./ocpipeline package --source PrismaWebhooks --destination . --force
cat PrismaWebhooks.pipe | ./lrctl oc pipe import
./lrctl metrics restart
./lrctl oc restart
```

## Intialize Webhook Beat

Follow the documentation here to intialize the Webhook beat:
https://docs.logrhythm.com/docs/OCbeats/webhook-beat/initialize-the-webhook-beat

**Important** -- The include logic relies on the fullyqualifiedbeatname, which must equal "webhookbeat_WH_Prisma", which means during initialization of the webhook beat, you must name this beat 'WH_Prisma'.  If you use a different name, you can edit the is_PrismaWebhooks.jq appropriately, and repackage the pipeline.
