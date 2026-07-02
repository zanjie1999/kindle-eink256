.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;
.source "WJResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Discovery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult<",
        "Ljava/util/List<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/util/List;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$1;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;
    .locals 3

    .line 64
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/util/List;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static idle()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;
    .locals 3

    .line 61
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IDLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/util/List;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static inProgress()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;
    .locals 3

    .line 62
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->IN_PROGRESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/util/List;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static success(Ljava/util/List;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/DiscoveredProvisionable;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/util/List;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V

    return-object v0
.end method
