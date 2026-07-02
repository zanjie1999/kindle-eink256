.class Lcom/amazon/kcp/store/StoreFragment$7;
.super Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreFragment;->attemptLoginOnJsWrapper(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreFragment;

.field final synthetic val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field final synthetic val$hasPageRedirect:Z

.field final synthetic val$targetPage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment;Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kcp/redding/ReddingActivity;ZLjava/lang/String;)V
    .locals 0

    .line 1962
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$7;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iput-object p4, p0, Lcom/amazon/kcp/store/StoreFragment$7;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    iput-boolean p5, p0, Lcom/amazon/kcp/store/StoreFragment$7;->val$hasPageRedirect:Z

    iput-object p6, p0, Lcom/amazon/kcp/store/StoreFragment$7;->val$targetPage:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;)V

    return-void
.end method


# virtual methods
.method public postAuthorized(Ljava/lang/String;)V
    .locals 2

    .line 1965
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$7;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreFragment;->isDestroyed()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1966
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->getInstance()Lcom/amazon/kcp/store/StoreFragmentSupervisor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreFragmentSupervisor;->markRestorable()V

    .line 1967
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$7;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/util/LibraryActivityUtils;->showLoadingScreenIfNeeded(Landroid/app/Activity;ZZ)V

    goto :goto_0

    .line 1969
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$7;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget-boolean v1, p0, Lcom/amazon/kcp/store/StoreFragment$7;->val$hasPageRedirect:Z

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/store/StoreFragment;->setPostAuthPageListener(ZZ)V

    .line 1970
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$7;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$7;->val$targetPage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/store/StoreFragment;->injectJavascript(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
