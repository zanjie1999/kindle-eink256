.class Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment$3;
.super Ljava/lang/Object;
.source "DialogTutorialFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment$3;->this$0:Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 150
    sget-object p1, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->currentFragment:Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;

    invoke-static {p1}, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->access$000(Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;)Lcom/amazon/kindle/krx/tutorial/DialogTutorial;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/tutorial/DialogTutorial$DialogButton;->NEUTRAL:Lcom/amazon/kindle/krx/tutorial/DialogTutorial$DialogButton;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krx/tutorial/DialogTutorial;->onClick(Lcom/amazon/kindle/krx/tutorial/DialogTutorial$DialogButton;)V

    .line 151
    sget-object p1, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->currentFragment:Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 152
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getInstance()Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->nextTutorial()V

    return-void
.end method
