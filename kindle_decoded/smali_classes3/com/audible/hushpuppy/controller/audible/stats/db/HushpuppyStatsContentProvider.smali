.class public final Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProvider;
.super Lcom/audible/mobile/stats/persistence/StatsContentProvider;
.source "HushpuppyStatsContentProvider.java"


# instance fields
.field private hushpuppyStatsContentProviderConfiguration:Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/audible/mobile/stats/persistence/StatsContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getStatsDatabaseConfiguration()Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProvider;->hushpuppyStatsContentProviderConfiguration:Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProvider;->hushpuppyStatsContentProviderConfiguration:Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProvider;->hushpuppyStatsContentProviderConfiguration:Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
