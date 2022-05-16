# is_PrismaWebhooks checks if the data matches the PrismaWebhooks criteria
def is_PrismaWebhooks:
    # TODO: fill out with logic for pipeline include (INTENTIONALLY DOES NOT PASS AS IS)
    # ."@metadata".beat == ""
    .fullyqualifiedbeatname == "webhookbeat_WH_Prisma"
;
