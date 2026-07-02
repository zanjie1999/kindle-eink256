.class public final Lcom/amazon/kcp/application/KRF4Helper;
.super Ljava/lang/Object;
.source "KRF4Helper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static nativeLibrariesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kcp/application/KRF4Helper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/KRF4Helper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static declared-synchronized loadNativeLibraries()V
    .locals 6

    const-class v0, Lcom/amazon/kcp/application/KRF4Helper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-boolean v1, Lcom/amazon/kcp/application/KRF4Helper;->nativeLibrariesLoaded:Z

    if-nez v1, :cond_1

    .line 25
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNativeLibraryLoader()Lcom/amazon/kcp/application/INativeLibraryLoader;

    move-result-object v1

    .line 26
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$array;->native_libraries:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 30
    invoke-interface {v1, v5}, Lcom/amazon/kcp/application/INativeLibraryLoader;->loadLibraryByName(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 33
    sput-boolean v1, Lcom/amazon/kcp/application/KRF4Helper;->nativeLibrariesLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
