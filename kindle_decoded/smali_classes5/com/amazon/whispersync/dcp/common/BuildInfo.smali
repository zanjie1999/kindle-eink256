.class public final Lcom/amazon/whispersync/dcp/common/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field public static final DCP_NOT_FOUND:I = -0x1

.field public static final DCP_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.dcp"

.field private static final JAR_BUILD_VERSION:I = 0x15dc18

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.common.BuildInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForStaleVersion(Landroid/content/Context;)V
    .locals 4

    .line 28
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/common/BuildInfo;->getDcpVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/common/BuildInfo;->getVersion()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 38
    sget-object v1, Lcom/amazon/whispersync/dcp/common/BuildInfo;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {}, Lcom/amazon/whispersync/dcp/common/BuildInfo;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p0

    const/4 p0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p0

    const-string p0, "The current package (%s) was built with a stale version of DCP (%d) the current version is %d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static getDcpVersion(Landroid/content/Context;)I
    .locals 3

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 63
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static getVersion()I
    .locals 1

    const v0, 0x15dc18

    return v0
.end method
