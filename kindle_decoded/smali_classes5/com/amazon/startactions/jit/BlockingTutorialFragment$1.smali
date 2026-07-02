.class Lcom/amazon/startactions/jit/BlockingTutorialFragment$1;
.super Ljava/lang/Object;
.source "BlockingTutorialFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/jit/BlockingTutorialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/jit/BlockingTutorialFragment;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment$1;->this$0:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/16 v1, 0x54

    if-ne p2, v1, :cond_1

    .line 160
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 161
    iget-object p2, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment$1;->this$0:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-static {p2}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->access$000(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 162
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment$1;->this$0:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-static {p1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->access$000(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;->onBackButtonTapped()Z

    move-result p1

    :cond_2
    return p1
.end method
