.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;
.super Ljava/lang/Exception;
.source "DSSClientError.java"


# instance fields
.field private final mFailureCause:Ljava/lang/Throwable;

.field private mOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mFailureCause:Ljava/lang/Throwable;

    .line 16
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

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

    .line 48
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;

    .line 52
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mFailureCause:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mFailureCause:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

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

.method public getFailureCause()Ljava/lang/Throwable;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mFailureCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getNextRetryTimestampMs()Ljava/lang/Long;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mFailureCause:Ljava/lang/Throwable;

    instance-of v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->getRetryCallAfterTimestampMs()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOperation()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mFailureCause:Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isUnblessedDiscovery()Z
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mFailureCause:Ljava/lang/Throwable;

    instance-of v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->is403Forbidden()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mFailureCause:Ljava/lang/Throwable;

    const-string v2, "mFailureCause"

    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->mOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const-string v2, "mOperation"

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 40
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
