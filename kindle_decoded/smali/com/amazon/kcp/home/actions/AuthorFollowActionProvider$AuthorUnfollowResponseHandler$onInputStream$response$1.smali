.class final Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler$onInputStream$response$1;
.super Ljava/lang/Object;
.source "AuthorFollowActionProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;->onInputStream(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler$onInputStream$response$1;->this$0:Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler$onInputStream$response$1;->this$0:Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;

    invoke-static {v0}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;->access$getArgs$p(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;)Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler$onInputStream$response$1;->this$0:Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;

    invoke-static {v1}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;->access$getArgs$p(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;)Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getView()Landroid/view/View;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler$onInputStream$response$1;->this$0:Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;

    invoke-static {v2}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;->access$getArgs$p(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;)Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getAction()Lcom/amazon/kindle/home/model/HomeAction;

    move-result-object v2

    .line 289
    sget-object v3, Lcom/amazon/kindle/home/action/ActionStatus;->POST_EXECUTION_FAILURE:Lcom/amazon/kindle/home/action/ActionStatus;

    .line 287
    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler$onInputStream$response$1;->this$0:Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;

    invoke-static {v0}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;->access$getArgs$p(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;)Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->displayAPIFailureAlert(Landroid/view/View;)V

    return-void
.end method
