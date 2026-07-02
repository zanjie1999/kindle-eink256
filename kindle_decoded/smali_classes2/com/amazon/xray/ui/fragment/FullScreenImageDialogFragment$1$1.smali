.class Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1$1;
.super Ljava/lang/Object;
.source "FullScreenImageDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1$1;->this$1:Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1$1;->this$1:Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;->this$0:Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
