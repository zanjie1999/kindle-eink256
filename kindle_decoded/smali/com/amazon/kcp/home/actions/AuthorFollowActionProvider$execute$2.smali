.class final Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;
.super Ljava/lang/Object;
.source "AuthorFollowActionProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;->execute(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Lcom/amazon/kindle/home/model/HomeAction;

.field final synthetic $postCallback:Lkotlin/jvm/functions/Function3;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;Lkotlin/jvm/functions/Function3;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;->this$0:Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;

    iput-object p2, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;->$postCallback:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;->$view:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;->$action:Lcom/amazon/kindle/home/model/HomeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;->$postCallback:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;->$view:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;->$action:Lcom/amazon/kindle/home/model/HomeAction;

    sget-object v3, Lcom/amazon/kindle/home/action/ActionStatus;->POST_EXECUTION_FAILURE:Lcom/amazon/kindle/home/action/ActionStatus;

    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;->this$0:Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;

    iget-object v1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$execute$2;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;->displayAPIFailureAlert(Landroid/view/View;)V

    return-void
.end method
