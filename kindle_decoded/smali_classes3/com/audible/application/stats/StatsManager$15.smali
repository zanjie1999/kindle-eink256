.class Lcom/audible/application/stats/StatsManager$15;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/StatsManager;->recordEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/application/stats/StatsManager;

.field final synthetic val$listeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;


# direct methods
.method constructor <init>(Lcom/audible/application/stats/StatsManager;Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$15;->this$0:Lcom/audible/application/stats/StatsManager;

    iput-object p2, p0, Lcom/audible/application/stats/StatsManager$15;->val$listeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 960
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$15;->val$listeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Listening"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$15;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$15;->val$listeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/audible/application/stats/StatsManager;->recordListeningStatsEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;Z)V

    goto :goto_0

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$15;->this$0:Lcom/audible/application/stats/StatsManager;

    iget-object v1, p0, Lcom/audible/application/stats/StatsManager$15;->val$listeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/audible/application/stats/StatsManager;->recordListeningStatsEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;Z)V

    :goto_0
    return-void
.end method
