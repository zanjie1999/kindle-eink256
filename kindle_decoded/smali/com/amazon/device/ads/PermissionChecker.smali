.class Lcom/amazon/device/ads/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasInternetPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.INTERNET"

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasLocationPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasWriteExternalStoragePermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
