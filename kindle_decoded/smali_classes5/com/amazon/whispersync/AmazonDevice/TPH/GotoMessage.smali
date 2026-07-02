.class public Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;
.super Ljava/lang/Object;
.source "GotoMessage.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage;


# instance fields
.field private final mCookie:Ljava/lang/String;

.field private final mIpAddress:[B

.field private final mPort:I

.field private final mSessionTimeoutSec:S

.field private final mSilentPeriodSec:S


# direct methods
.method public constructor <init>([BISSLjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;->mIpAddress:[B

    .line 20
    iput p2, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;->mPort:I

    .line 21
    iput-short p3, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;->mSessionTimeoutSec:S

    .line 22
    iput-short p4, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;->mSilentPeriodSec:S

    .line 23
    iput-object p5, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;->mCookie:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;->mIpAddress:[B

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;->mPort:I

    return v0
.end method

.method public getSessionTimeoutSec()S
    .locals 1

    .line 44
    iget-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;->mSessionTimeoutSec:S

    return v0
.end method

.method public getSilentPeriodSec()S
    .locals 1

    .line 49
    iget-short v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GotoMessage;->mSilentPeriodSec:S

    return v0
.end method

.method public getType()Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;->Goto:Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    return-object v0
.end method
