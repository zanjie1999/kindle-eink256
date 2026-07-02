.class final Lcom/amazon/kcp/home/HomeRefreshControl$onSynchronizationManagerEvent$1;
.super Ljava/lang/Object;
.source "HomeRefreshControl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/HomeRefreshControl;->onSynchronizationManagerEvent(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/HomeRefreshControl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/HomeRefreshControl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl$onSynchronizationManagerEvent$1;->this$0:Lcom/amazon/kcp/home/HomeRefreshControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl$onSynchronizationManagerEvent$1;->this$0:Lcom/amazon/kcp/home/HomeRefreshControl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/home/HomeRefreshControl;->access$finishIfNecessary(Lcom/amazon/kcp/home/HomeRefreshControl;ZLjava/lang/String;)V

    return-void
.end method
