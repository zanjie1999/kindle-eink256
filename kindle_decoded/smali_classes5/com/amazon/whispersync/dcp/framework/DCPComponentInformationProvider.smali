.class public final Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider;
.super Ljava/lang/Object;
.source "DCPComponentInformationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;,
        Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.DCPComponentInformationProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static buildFuture(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    invoke-direct {v1, p1, p0}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;-><init>(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentInformationFor(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/ThreadHelpers;->isRunningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider;->buildFuture(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Can\'t call this method on the main thread"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
