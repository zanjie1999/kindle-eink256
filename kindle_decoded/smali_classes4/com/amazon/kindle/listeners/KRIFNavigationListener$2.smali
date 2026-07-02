.class Lcom/amazon/kindle/listeners/KRIFNavigationListener$2;
.super Ljava/lang/Object;
.source "KRIFNavigationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/listeners/KRIFNavigationListener;->sendBufferedEventsOnKrifViewInitializationComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$2;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$2;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$600(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$2;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$700(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$2;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$702(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Z)Z

    .line 330
    invoke-static {}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$800()Ljava/lang/String;

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$2;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$600(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$2;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    iget-object v2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$2;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v2}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$600(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/events/IEvent;

    invoke-static {v1, v2}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$900(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_0

    .line 335
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
