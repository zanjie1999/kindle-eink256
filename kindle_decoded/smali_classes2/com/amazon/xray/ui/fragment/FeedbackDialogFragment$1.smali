.class Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$1;
.super Ljava/lang/Object;
.source "FeedbackDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;->showToast(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$1;->this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$1;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$1;->this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$1;->val$text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
