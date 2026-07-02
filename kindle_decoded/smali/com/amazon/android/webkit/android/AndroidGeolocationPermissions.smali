.class public Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;
.super Lcom/amazon/android/webkit/AmazonGeolocationPermissions;
.source "AndroidGeolocationPermissions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonGeolocationPermissions;-><init>()V

    return-void
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->allow(Ljava/lang/String;)V

    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->clear(Ljava/lang/String;)V

    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 54
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    return-void
.end method

.method public getAllowed(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$2;

    invoke-direct {v0, p0, p2}, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$2;-><init>(Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;Lcom/amazon/android/webkit/AmazonValueCallback;)V

    .line 49
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getOrigins(Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions$1;-><init>(Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;Lcom/amazon/android/webkit/AmazonValueCallback;)V

    .line 27
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    return-void
.end method
