.class final Lcom/amazon/kcp/cover/CoverLoadingTaskManager$init$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoverLoadingTaskManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$init$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$init$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$init$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->access$getNetworkService$p(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$init$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->access$executePendingWorkOnExecutor(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)V

    :cond_0
    return-void
.end method
