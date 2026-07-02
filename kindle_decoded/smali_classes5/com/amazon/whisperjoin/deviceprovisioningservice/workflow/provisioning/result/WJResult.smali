.class public abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;
.source "WJResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisioningDoneStateChange;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$NetworkScanComplete;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$RegistrationStateChange;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WifiConnectionStateChange;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$WorkflowIdle;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Disconnection;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "TT;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;-><init>(Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V

    .line 23
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/Object;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 38
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 40
    :cond_2
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    .line 42
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 55
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isA(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;)Z"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}  mWJProvisionee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;->mWJProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
