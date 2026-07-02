.class Lcom/audible/application/stats/StatsManager$12;
.super Ljava/lang/Object;
.source "StatsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/StatsManager;->postDelayedNetworkMonitor(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$delay:J

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/audible/application/stats/StatsManager;JLjava/lang/Runnable;)V
    .locals 0

    .line 543
    iput-wide p2, p0, Lcom/audible/application/stats/StatsManager$12;->val$delay:J

    iput-object p4, p0, Lcom/audible/application/stats/StatsManager$12;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 546
    iget-wide v0, p0, Lcom/audible/application/stats/StatsManager$12;->val$delay:J

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 547
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager$12;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
