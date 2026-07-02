.class Lcom/audible/application/stats/StatsManager$19;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/StatsManager;->clearDBStaleEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/application/stats/StatsManager;


# direct methods
.method constructor <init>(Lcom/audible/application/stats/StatsManager;)V
    .locals 0

    .line 1976
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$19;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1979
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$19;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v0, v0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    invoke-interface {v0}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->clearStaleEvents()V

    return-void
.end method
