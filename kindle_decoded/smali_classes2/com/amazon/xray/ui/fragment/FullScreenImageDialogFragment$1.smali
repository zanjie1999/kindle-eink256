.class Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;
.super Ljava/lang/Object;
.source "FullScreenImageDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;->this$0:Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;

    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;->val$view:Landroid/view/View;

    new-instance v1, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1$1;-><init>(Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
