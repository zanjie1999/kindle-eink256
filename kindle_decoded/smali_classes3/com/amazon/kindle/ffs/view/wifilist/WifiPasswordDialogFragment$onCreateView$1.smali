.class final Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "WifiPasswordDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
