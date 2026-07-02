.class public final Lcom/amazon/weblab/mobile/model/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# instance fields
.field private mMarketplaceId:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/weblab/mobile/model/SessionInfo;)V
    .locals 1

    .line 27
    iget-object v0, p1, Lcom/amazon/weblab/mobile/model/SessionInfo;->mSessionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/weblab/mobile/model/SessionInfo;->mMarketplaceId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/amazon/weblab/mobile/model/SessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/model/SessionInfo;->setSessionId(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    invoke-direct {p0, p2}, Lcom/amazon/weblab/mobile/model/SessionInfo;->setMarketplaceId(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private setMarketplaceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/amazon/weblab/mobile/model/SessionInfo;->mMarketplaceId:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Marketplace can\'t be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Marketplace can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/amazon/weblab/mobile/model/SessionInfo;->mSessionId:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session can\'t be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 87
    instance-of v0, p1, Lcom/amazon/weblab/mobile/model/SessionInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Lcom/amazon/weblab/mobile/model/SessionInfo;

    .line 89
    iget-object v0, p1, Lcom/amazon/weblab/mobile/model/SessionInfo;->mMarketplaceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/model/SessionInfo;->mMarketplaceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/amazon/weblab/mobile/model/SessionInfo;->mSessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/SessionInfo;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getMarketplaceId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/SessionInfo;->mMarketplaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/SessionInfo;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/amazon/weblab/mobile/model/SessionInfo;->mMarketplaceId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v2, p0, Lcom/amazon/weblab/mobile/model/SessionInfo;->mSessionId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
