.class public Lcom/amazon/android/webkit/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"


# instance fields
.field private final amazonProxy:Z

.field private final authToken:Ljava/lang/String;

.field private final endpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 36
    iput-object p1, p0, Lcom/amazon/android/webkit/ProxyInfo;->endpoint:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/android/webkit/ProxyInfo;->authToken:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Lcom/amazon/android/webkit/ProxyInfo;->amazonProxy:Z

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endpoint can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/android/webkit/ProxyInfo;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/android/webkit/ProxyInfo;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public isAmazonProxy()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/amazon/android/webkit/ProxyInfo;->amazonProxy:Z

    return v0
.end method
