.class public final Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "ToastTutorialFragment.kt"

# interfaces
.implements Lcom/amazon/kindle/toast/KindleToastAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

.field final synthetic this$0:Lcom/amazon/kindle/tutorial/ToastTutorialFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ToastTutorialFragment;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/tutorial/model/ActionConfig;",
            ")V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/tutorial/ToastTutorialFragment;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$1;->$actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionText()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/tutorial/ToastTutorialFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->go:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requireContext().resources.getString(R.string.go)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public dismissText()Ljava/lang/String;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/tutorial/ToastTutorialFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->dismiss:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requireContext().resourc\u2026tString(R.string.dismiss)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onActionClicked()V
    .locals 3

    .line 81
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$1;->$actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->getTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$1;->$actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->handleAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
