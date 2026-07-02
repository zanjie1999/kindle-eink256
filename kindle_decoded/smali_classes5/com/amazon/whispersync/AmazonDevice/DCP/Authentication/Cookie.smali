.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# instance fields
.field private mUrl:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isValidValue(Ljava/lang/String;)Z
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->isValidValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setUrl(Ljava/lang/String;)Z
    .locals 1

    .line 17
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->mUrl:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 1

    .line 28
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->isValidValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->mValue:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
