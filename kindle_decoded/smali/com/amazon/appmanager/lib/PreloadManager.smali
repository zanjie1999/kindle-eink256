.class public abstract Lcom/amazon/appmanager/lib/PreloadManager;
.super Ljava/lang/Object;
.source "PreloadManager.java"


# static fields
.field private static defaultPreloadManager:Lcom/amazon/appmanager/lib/PreloadManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/amazon/appmanager/lib/PreloadManager;
    .locals 2

    const-class v0, Lcom/amazon/appmanager/lib/PreloadManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/amazon/appmanager/lib/PreloadManager;->defaultPreloadManager:Lcom/amazon/appmanager/lib/PreloadManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/amazon/appmanager/lib/DefaultPreloadManager;

    invoke-direct {v1}, Lcom/amazon/appmanager/lib/DefaultPreloadManager;-><init>()V

    sput-object v1, Lcom/amazon/appmanager/lib/PreloadManager;->defaultPreloadManager:Lcom/amazon/appmanager/lib/PreloadManager;

    .line 29
    :cond_0
    sget-object v1, Lcom/amazon/appmanager/lib/PreloadManager;->defaultPreloadManager:Lcom/amazon/appmanager/lib/PreloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract getPreloadAssociateTag(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/appmanager/lib/UnrecognizedMarketplaceException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method
