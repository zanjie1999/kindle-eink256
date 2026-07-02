.class Lcom/amazon/kindle/tutorial/DialogPageFragment$1;
.super Ljava/lang/Object;
.source "DialogPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/DialogPageFragment;->setUpButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/DialogPageFragment;

.field final synthetic val$actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

.field final synthetic val$currentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/DialogPageFragment;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/DialogPageFragment$1;->this$0:Lcom/amazon/kindle/tutorial/DialogPageFragment;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/DialogPageFragment$1;->val$currentActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/DialogPageFragment$1;->val$actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getCurrentLifecycleListener()Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    move-result-object p1

    .line 67
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;->POSITIVE_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onDialogButtonClicked(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;)V

    .line 68
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;->DISMISSED_BY_DIALOG_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onTutorialDismissed(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V

    .line 69
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/DialogPageFragment$1;->val$currentActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/DialogPageFragment$1;->val$actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/DialogPageFragment$1;->this$0:Lcom/amazon/kindle/tutorial/DialogPageFragment;

    invoke-static {v0, p1}, Lcom/amazon/kindle/tutorial/DialogPageFragment;->access$000(Lcom/amazon/kindle/tutorial/DialogPageFragment;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V

    :cond_1
    return-void
.end method
