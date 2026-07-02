.class Lcom/amazon/startactions/jit/BlockingTutorialFragment$2;
.super Ljava/lang/Object;
.source "BlockingTutorialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getBubbleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;
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

    .line 200
    iput-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment$2;->this$0:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment$2;->this$0:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-static {p1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->access$100(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment$2;->this$0:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-static {p1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->access$100(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment$2;->this$0:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-interface {p1, v0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;->onDismiss(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment$2;->this$0:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
