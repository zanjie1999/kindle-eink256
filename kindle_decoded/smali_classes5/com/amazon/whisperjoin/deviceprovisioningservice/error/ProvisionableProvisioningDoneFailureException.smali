.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;
.source "ProvisionableProvisioningDoneFailureException.java"


# instance fields
.field private final mProvisioningFailure:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;->mProvisioningFailure:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 24
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;

    .line 26
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;->mProvisioningFailure:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;->mProvisioningFailure:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getProvisioningFailure()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;->mProvisioningFailure:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableProvisioningDoneFailureException;->mProvisioningFailure:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
