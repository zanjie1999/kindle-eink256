.class public Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;
.super Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;
.source "PhoneHomeResponseMessage.java"


# instance fields
.field private mCookie:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mType:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mType:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    const-string p1, ""

    .line 13
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mCookie:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieLength()J
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mCookie:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagLength()J
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getType()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mType:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mCookie:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mType:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypePhoneHomeAck:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypePhoneHomeNack:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mCookie:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeResponseMessage;->mTag:Ljava/lang/String;

    return-void
.end method
