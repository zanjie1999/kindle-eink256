.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;
.super Ljava/lang/Object;
.source "GetRegistrationStatusResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;
    }
.end annotation


# instance fields
.field private final mDurationToWaitMillis:J

.field private final mLastRegisteredTime:Ljava/lang/String;

.field private final mStatus:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;JLjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mStatus:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    .line 19
    iput-wide p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mDurationToWaitMillis:J

    .line 20
    iput-object p4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mLastRegisteredTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 40
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;

    .line 44
    iget-wide v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mDurationToWaitMillis:J

    iget-wide v4, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mDurationToWaitMillis:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mStatus:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mStatus:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mLastRegisteredTime:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mLastRegisteredTime:Ljava/lang/String;

    .line 46
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

.method public getDurationToWait()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mDurationToWaitMillis:J

    return-wide v0
.end method

.method public getLastRegisteredTime()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mLastRegisteredTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mStatus:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mStatus:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mDurationToWaitMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mLastRegisteredTime:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 56
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mStatus:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    const-string v2, "mStatus"

    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mDurationToWaitMillis:J

    const-string v3, "mDurationToWait"

    .line 58
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->mLastRegisteredTime:Ljava/lang/String;

    const-string v2, "mLastRegisteredTime"

    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 60
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
