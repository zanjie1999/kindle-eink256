.class public Lcom/amazon/android/webkit/android/AndroidWebStorage;
.super Lcom/amazon/android/webkit/AmazonWebStorage;
.source "AndroidWebStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonWebStorage;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteAllData()V
    .locals 1

    .line 49
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    return-void
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebStorage;->deleteOrigin(Ljava/lang/String;)V

    return-void
.end method

.method public getOrigins(Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebStorage$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/webkit/android/AndroidWebStorage$1;-><init>(Lcom/amazon/android/webkit/android/AndroidWebStorage;Lcom/amazon/android/webkit/AmazonValueCallback;)V

    .line 27
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebStorage$3;

    invoke-direct {v0, p0, p2}, Lcom/amazon/android/webkit/android/AndroidWebStorage$3;-><init>(Lcom/amazon/android/webkit/android/AndroidWebStorage;Lcom/amazon/android/webkit/AmazonValueCallback;)V

    .line 61
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebStorage;->getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebStorage$2;

    invoke-direct {v0, p0, p2}, Lcom/amazon/android/webkit/android/AndroidWebStorage$2;-><init>(Lcom/amazon/android/webkit/android/AndroidWebStorage;Lcom/amazon/android/webkit/AmazonValueCallback;)V

    .line 39
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 1

    .line 66
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebStorage;->setQuotaForOrigin(Ljava/lang/String;J)V

    return-void
.end method
