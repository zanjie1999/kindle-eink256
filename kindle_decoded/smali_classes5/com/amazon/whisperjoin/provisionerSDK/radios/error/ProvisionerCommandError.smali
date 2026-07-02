.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;
.super Ljava/lang/Exception;
.source "ProvisionerCommandError.java"


# instance fields
.field private final mCommand:Lcom/amazon/whisperbridge/constants/Command;

.field private final mFailureCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/amazon/whisperbridge/constants/Command;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mFailureCause:Ljava/lang/Throwable;

    .line 14
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

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

    .line 36
    const-class v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;

    .line 38
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mFailureCause:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mFailureCause:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    iget-object p1, p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    .line 39
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCommand()Lcom/amazon/whisperbridge/constants/Command;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    return-object v0
.end method

.method public getFailureCause()Ljava/lang/Throwable;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mFailureCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mFailureCause:Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 27
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mFailureCause:Ljava/lang/Throwable;

    const-string v2, "mFailureCause"

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->mCommand:Lcom/amazon/whisperbridge/constants/Command;

    const-string v2, "mCommandMessage"

    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 30
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
