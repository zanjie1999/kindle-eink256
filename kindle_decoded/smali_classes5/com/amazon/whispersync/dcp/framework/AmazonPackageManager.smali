.class public Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;
.super Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;
.source "AmazonPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;
    }
.end annotation


# static fields
.field public static final AMZ_INSTALL_FAILED_UNEXPECTED_EXCEPTION:I = -0xea60

.field public static final AMZ_INSTALL_FAILED_UNEXPECTED_EXCEPTION_POST:I = -0xea62

.field public static final AMZ_INSTALL_FAILURE_DETECTED:I = -0xea61

.field public static final AMZ_INSTALL_PROMPT:I = -0x80000000

.field private static final EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final INSTALL_ALLOW_TEST:I = 0x4

.field public static final INSTALL_BUILTIN_FLAGS_MASK:I = 0x1f

.field public static final INSTALL_EXTERNAL:I = 0x8

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_FORWARD_LOCK:I = 0x1

.field public static final INSTALL_INTERNAL:I = 0x10

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_REPLACE_EXISTING:I = 0x2

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field private static final PACKAGE_OBSERVER_PARAMETER_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;

.field private mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-class v0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 378
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 379
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->mContext:Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;

    .line 380
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    invoke-direct {p1}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;)Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->mContext:Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;

    return-object p0
.end method

.method static synthetic access$400(I)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->installFlagsAreValid(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->getExistingPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->getPackageDescription(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->getPackageDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getExistingPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->mInner:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getPackageDescription(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 547
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%s %s(%d)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPackageDescription(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 552
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%s (%d)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static installFlagsAreValid(I)Z
    .locals 1

    const v0, -0x7fffffe1

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private invokeHiddenMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 522
    sget-object p2, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalArgumentException: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 518
    sget-object p2, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalAccessException: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public clearApplicationUserData(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 488
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$4;

    invoke-direct {v0, p0, p2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$4;-><init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver;)V

    .line 500
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    const-class v1, Landroid/content/pm/PackageManager;

    const-string v2, "clearApplicationUserData"

    invoke-virtual {p2, v1, v2}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;->getHiddenMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 502
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 503
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 504
    invoke-static {v3, v4, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->mInner:Landroid/content/pm/PackageManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object v0, v3, v2

    invoke-direct {p0, p2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->invokeHiddenMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 464
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$3;

    invoke-direct {v0, p0, p2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$3;-><init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver;)V

    .line 476
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    const-class v1, Landroid/content/pm/PackageManager;

    const-string v2, "deleteApplicationCacheFiles"

    invoke-virtual {p2, v1, v2}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;->getHiddenMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 478
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 479
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 480
    invoke-static {v3, v4, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->mInner:Landroid/content/pm/PackageManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object v0, v3, v2

    invoke-direct {p0, p2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->invokeHiddenMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public deletePackage(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/IPackageDeleteObserver;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 440
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$2;

    invoke-direct {v0, p0, p2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$2;-><init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Lcom/amazon/whispersync/dcp/framework/IPackageDeleteObserver;)V

    .line 452
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    const-class v1, Landroid/content/pm/PackageManager;

    const-string v2, "deletePackage"

    invoke-virtual {p2, v1, v2}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;->getHiddenMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 454
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 455
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 456
    invoke-static {v3, v4, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->mInner:Landroid/content/pm/PackageManager;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object v0, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v3, p3

    invoke-direct {p0, p2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->invokeHiddenMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public installPackage(Landroid/net/Uri;Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 410
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$1;-><init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;)V

    .line 422
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    const-class v1, Landroid/content/pm/PackageManager;

    const-string v2, "installPackage"

    invoke-virtual {p2, v1, v2}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;->getHiddenMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 424
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 425
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 426
    invoke-static {v3, v4, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/PackageManagerWrapper;->mInner:Landroid/content/pm/PackageManager;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object v0, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v3, p3

    const/4 p1, 0x3

    aput-object p4, v3, p1

    invoke-direct {p0, p2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->invokeHiddenMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public installPackage(Ljava/lang/String;ILandroid/net/Uri;Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 9

    .line 395
    new-instance v8, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;-><init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Ljava/lang/String;ILandroid/net/Uri;Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;ILjava/lang/String;)V

    .line 402
    invoke-virtual {v8}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->run()V

    return-void
.end method

.method setReflectionHelper(Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    return-void
.end method
