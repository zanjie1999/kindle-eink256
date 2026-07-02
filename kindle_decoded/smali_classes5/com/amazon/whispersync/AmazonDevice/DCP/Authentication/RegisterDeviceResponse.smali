.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;
.super Ljava/lang/Object;
.source "RegisterDeviceResponse.java"


# instance fields
.field private mAdpToken:Ljava/lang/String;

.field private mCertificate:Ljava/lang/String;

.field private mCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceEmail:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDirectedId:Ljava/lang/String;

.field private mError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;

.field private mPrivateKey:Ljava/lang/String;

.field private mResponseLength:I

.field private mStoreAuthenticationCookie:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mAdpToken:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mDeviceName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mPrivateKey:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mCertificate:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mUserName:Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mCookies:Ljava/util/List;

    if-eqz p6, :cond_0

    .line 38
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@kindle.com"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mDeviceEmail:Ljava/lang/String;

    .line 43
    :cond_0
    iput-object p7, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;

    return-void
.end method


# virtual methods
.method public addCookie(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mCookies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAdpToken()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mAdpToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificate()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mCertificate:Ljava/lang/String;

    return-object v0
.end method

.method public getCookie(J)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->getNumCookies()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "RegisterDeviceResponse: getCookie: index out of range."

    .line 120
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mCookies:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;

    return-object p1
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mDirectedId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mDeviceEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;

    return-object v0
.end method

.method public getNumCookies()J
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mCookies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mPrivateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseLength()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mResponseLength:I

    return v0
.end method

.method public getStoreAuthenticationCookie()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mStoreAuthenticationCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method setAdpToken(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mAdpToken:Ljava/lang/String;

    return-void
.end method

.method setCertificate(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mCertificate:Ljava/lang/String;

    return-void
.end method

.method setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method setDirectedId(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mDirectedId:Ljava/lang/String;

    return-void
.end method

.method setEmail(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mDeviceEmail:Ljava/lang/String;

    return-void
.end method

.method setError(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;

    return-void
.end method

.method setPrivateKey(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mPrivateKey:Ljava/lang/String;

    return-void
.end method

.method setResponseLength(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mResponseLength:I

    return-void
.end method

.method setStoreAuthenticationCookie(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mStoreAuthenticationCookie:Ljava/lang/String;

    return-void
.end method

.method setUserName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->mUserName:Ljava/lang/String;

    return-void
.end method
