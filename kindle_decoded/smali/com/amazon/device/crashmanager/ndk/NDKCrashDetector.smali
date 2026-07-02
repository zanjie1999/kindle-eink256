.class public Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;
.super Ljava/lang/Object;
.source "NDKCrashDetector.java"


# static fields
.field private static final REVISION_PLACEHOLDER:Ljava/lang/String; = "X"

.field private static final TAG:Ljava/lang/String; = "NDKCrashDetector"


# instance fields
.field private isEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;->isEnabled:Z

    const-string v0, "crashmanager-ndk"

    .line 19
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private getSystemProperties(Landroid/content/Context;)Lcom/amazon/device/crashmanager/ndk/SystemProps;
    .locals 5

    .line 31
    new-instance v0, Lcom/amazon/device/crashmanager/ndk/SystemProps;

    invoke-direct {v0}, Lcom/amazon/device/crashmanager/ndk/SystemProps;-><init>()V

    .line 32
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/crashmanager/ndk/SystemProps;->setBuildFingerPrint(Ljava/lang/String;)V

    .line 33
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/crashmanager/ndk/SystemProps;->setOsBuildNumber(Ljava/lang/String;)V

    .line 34
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/crashmanager/ndk/SystemProps;->setHardware(Ljava/lang/String;)V

    const-string v1, "X"

    .line 35
    invoke-virtual {v0, v1}, Lcom/amazon/device/crashmanager/ndk/SystemProps;->setRevision(Ljava/lang/String;)V

    .line 36
    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/crashmanager/ndk/SystemProps;->setBootLoader(Ljava/lang/String;)V

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 41
    sget-object p1, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;->TAG:Ljava/lang/String;

    const-string v1, "Package manager was null."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 47
    sget-object v1, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package info was null for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 51
    :cond_1
    iget-object p1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazon/device/crashmanager/ndk/SystemProps;->setVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    sget-object v1, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;->TAG:Ljava/lang/String;

    const-string v2, "Error while capturing package details"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static native setupNDKCrash(Ljava/lang/String;Lcom/amazon/device/crashmanager/ndk/SystemProps;)V
.end method


# virtual methods
.method public enableNDKCrash(Landroid/content/Context;)V
    .locals 2

    .line 23
    iget-boolean v0, p0, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;->isEnabled:Z

    if-nez v0, :cond_0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;->getSystemProperties(Landroid/content/Context;)Lcom/amazon/device/crashmanager/ndk/SystemProps;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/files"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;->setupNDKCrash(Ljava/lang/String;Lcom/amazon/device/crashmanager/ndk/SystemProps;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/amazon/device/crashmanager/ndk/NDKCrashDetector;->isEnabled:Z

    :cond_0
    return-void
.end method
