.class Lcom/audible/application/stats/StatsManager$18;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/StatsManager;->completeRecordEvent(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/application/stats/StatsManager;

.field final synthetic val$endTime:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/audible/application/stats/StatsManager;Ljava/util/Date;)V
    .locals 0

    .line 1962
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$18;->this$0:Lcom/audible/application/stats/StatsManager;

    iput-object p2, p0, Lcom/audible/application/stats/StatsManager$18;->val$endTime:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1965
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$18;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v0, v0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$18;->val$endTime:Ljava/util/Date;

    invoke-interface {v0, v1}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->setEventsToCompleted(Ljava/util/Date;)V

    return-void
.end method
