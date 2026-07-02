.class final Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;
.super Ljava/lang/Object;
.source "BaseAuthorFollowResponseHandler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->isHttpUrlConnectionOk(Landroid/view/View;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Lcom/amazon/kindle/home/model/HomeAction;

.field final synthetic $callback:Lkotlin/jvm/functions/Function3;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;Landroid/view/View;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;->this$0:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;

    iput-object p2, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;->$callback:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;->$action:Lcom/amazon/kindle/home/model/HomeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;->this$0:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;

    iget-object v1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->displayAPIFailureAlert(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;->$callback:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;->$view:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$isHttpUrlConnectionOk$1;->$action:Lcom/amazon/kindle/home/model/HomeAction;

    sget-object v3, Lcom/amazon/kindle/home/action/ActionStatus;->POST_EXECUTION_FAILURE:Lcom/amazon/kindle/home/action/ActionStatus;

    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    return-void
.end method
