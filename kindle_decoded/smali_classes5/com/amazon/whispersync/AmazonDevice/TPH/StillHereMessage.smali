.class public Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;
.super Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;
.source "StillHereMessage.java"


# instance fields
.field private final mCookie:Ljava/lang/String;

.field private final mSessionTimeoutSec:S

.field private final mSilentPeriodSec:S


# direct methods
.method public constructor <init>(Ljava/lang/String;SS)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->mCookie:Ljava/lang/String;

    .line 15
    iput-short p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->mSessionTimeoutSec:S

    .line 16
    iput-short p3, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->mSilentPeriodSec:S

    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieLength()J
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->mCookie:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSessionTimeoutSec()S
    .locals 1

    .line 43
    iget-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->mSessionTimeoutSec:S

    return v0
.end method

.method public getSilentPeriodSec()S
    .locals 1

    .line 48
    iget-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->mSilentPeriodSec:S

    return v0
.end method

.method public getType()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeStillHere:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    return-object v0
.end method

.method public isValid()Z
    .locals 5

    .line 22
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/StillHereMessage;->getCookieLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
