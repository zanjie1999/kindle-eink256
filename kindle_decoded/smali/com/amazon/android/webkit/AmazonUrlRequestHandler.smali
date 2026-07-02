.class public abstract Lcom/amazon/android/webkit/AmazonUrlRequestHandler;
.super Ljava/lang/Object;
.source "AmazonUrlRequestHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getExtraHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getHttpProxy(Ljava/lang/String;)Lcom/amazon/android/webkit/ProxyInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0, p1, v0}, Lcom/amazon/android/webkit/AmazonUrlRequestHandler;->getHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/android/webkit/ProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public abstract getHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/android/webkit/ProxyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/android/webkit/ProxyInfo;"
        }
    .end annotation
.end method

.method public abstract getUserAgent(Ljava/lang/String;)Ljava/lang/String;
.end method
