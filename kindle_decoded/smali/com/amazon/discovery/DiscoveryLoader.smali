.class public final Lcom/amazon/discovery/DiscoveryLoader;
.super Ljava/lang/Object;
.source "DiscoveryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISCOVERY_MAPPING_RESOURCE:Ljava/lang/String; = "/discovery.json"

.field private static inputStreamProvider:Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/discovery/DiscoveryLoader$1;

    invoke-direct {v0}, Lcom/amazon/discovery/DiscoveryLoader$1;-><init>()V

    sput-object v0, Lcom/amazon/discovery/DiscoveryLoader;->inputStreamProvider:Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized getInputStreamProvider()Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;
    .locals 2

    const-class v0, Lcom/amazon/discovery/DiscoveryLoader;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/amazon/discovery/DiscoveryLoader;->inputStreamProvider:Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized replaceInputStreamProvider(Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;)Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;
    .locals 2

    const-class v0, Lcom/amazon/discovery/DiscoveryLoader;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/amazon/discovery/DiscoveryLoader;->inputStreamProvider:Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;

    if-eqz p0, :cond_0

    .line 64
    sput-object p0, Lcom/amazon/discovery/DiscoveryLoader;->inputStreamProvider:Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-object v1

    .line 62
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "A null provider was passed - must be nonnull"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
