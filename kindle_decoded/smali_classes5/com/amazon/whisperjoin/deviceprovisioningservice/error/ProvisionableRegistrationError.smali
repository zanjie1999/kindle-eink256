.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;
.source "ProvisionableRegistrationError.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mHttpCode:Ljava/lang/Integer;

.field private final mMessage:Ljava/lang/String;

.field private final mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mMessage:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;->getHttpCode()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mHttpCode:Ljava/lang/Integer;

    .line 19
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;->getRegistrationState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

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

    if-eqz p1, :cond_3

    .line 37
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 38
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;

    .line 39
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mMessage:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mHttpCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mHttpCode:Ljava/lang/Integer;

    .line 40
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getHttpCode()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mHttpCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mHttpCode:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mMessage:Ljava/lang/String;

    const-string v2, "mMessage"

    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mHttpCode:Ljava/lang/Integer;

    const-string v2, "mHttpCode"

    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableRegistrationError;->mState:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

    const-string v2, "mState"

    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 55
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
