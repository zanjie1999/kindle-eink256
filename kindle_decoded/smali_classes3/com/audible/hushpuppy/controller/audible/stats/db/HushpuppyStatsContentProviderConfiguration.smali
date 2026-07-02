.class public final Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;
.super Lcom/audible/mobile/stats/persistence/DefaultStatsContentProviderConfiguration;
.source "HushpuppyStatsContentProviderConfiguration.java"


# instance fields
.field private authority:Ljava/lang/String;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/audible/mobile/stats/persistence/DefaultStatsContentProviderConfiguration;-><init>()V

    const-string v0, "context can\'t be null."

    .line 36
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized getContentAuthority()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;->authority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".hushpuppy.controller.audible.stats.db.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;->authority:Ljava/lang/String;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;->authority:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
