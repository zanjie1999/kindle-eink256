.class public Lcom/amazon/kcp/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static final APPSTORE_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.venezia"

.field private static final CANARY_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.canary"

.field private static final GOOGLE_PLAY_STORE_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field private static final GROVER_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.fv"


# direct methods
.method public static hasAppstore(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.amazon.venezia"

    .line 37
    invoke-static {v0, p0}, Lcom/amazon/kcp/util/PackageUtils;->hasPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static hasCanary(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.amazon.canary"

    .line 19
    invoke-static {v0, p0}, Lcom/amazon/kcp/util/PackageUtils;->hasPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static hasGooglePlayStore(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.android.vending"

    .line 41
    invoke-static {v0, p0}, Lcom/amazon/kcp/util/PackageUtils;->hasPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static hasGrover(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.amazon.fv"

    .line 28
    invoke-static {v0, p0}, Lcom/amazon/kcp/util/PackageUtils;->hasPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static hasPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 53
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 59
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    :goto_0
    return v1
.end method
