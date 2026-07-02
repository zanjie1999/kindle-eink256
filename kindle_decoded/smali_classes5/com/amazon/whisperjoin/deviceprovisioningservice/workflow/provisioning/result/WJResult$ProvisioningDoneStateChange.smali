.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;
.source "WJResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisioningDoneStateChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$1;)V

    return-void
.end method

.method public static error(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;
    .locals 2

    .line 133
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static success(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;
    .locals 3

    .line 132
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V

    return-object v0
.end method
