.class Lcom/audible/application/stats/StatsManager$13;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/StatsManager;->init(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 559
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$13;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$13;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v0, v0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    invoke-interface {v0}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->clearStaleEvents()V

    .line 566
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$13;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v0, v0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->setEventsToCompleted(Ljava/util/Date;)V

    .line 569
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$13;->this$0:Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v0}, Lcom/audible/application/stats/StatsManager;->dispatchCompletedEvents()V

    return-void
.end method
