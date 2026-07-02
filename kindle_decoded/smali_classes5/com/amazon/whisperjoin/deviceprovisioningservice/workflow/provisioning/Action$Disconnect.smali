.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$Disconnect;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Disconnect"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$1;)V

    return-void
.end method
