.class public Lcom/amazon/whisperjoin/util/FireOSUtil;
.super Ljava/lang/Object;
.source "FireOSUtil.java"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/util/FireOSUtil;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public isFireTvDevice()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/amazon/whisperjoin/util/FireOSUtil;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "amazon.hardware.fire_tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPoweredDevice()Z
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/util/FireOSUtil;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.amazon.software.fireos"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ro.build.configuration"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "tablet"

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
