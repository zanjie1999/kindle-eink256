.class Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager$1;
.super Ljava/lang/Object;
.source "ListeningStatsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager$1;->this$0:Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager$1;->this$0:Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->updateCurrentListeningEventTime()V

    return-void
.end method
