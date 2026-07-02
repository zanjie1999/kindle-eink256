.class Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$1;
.super Ljava/lang/Object;
.source "SendFeedbackDialogFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

.field final synthetic val$sendButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;Landroid/widget/Button;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$1;->this$0:Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$1;->val$sendButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$1;->val$sendButton:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
