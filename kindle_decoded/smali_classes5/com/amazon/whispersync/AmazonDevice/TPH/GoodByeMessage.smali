.class public Lcom/amazon/whispersync/AmazonDevice/TPH/GoodByeMessage;
.super Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;
.source "GoodByeMessage.java"


# instance fields
.field private mCookie:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GoodByeMessage;->mCookie:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GoodByeMessage;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieLength()J
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GoodByeMessage;->mCookie:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getType()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;->PhoneHomeMessageTypeGoodBye:Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/TPH/GoodByeMessage;->mCookie:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
