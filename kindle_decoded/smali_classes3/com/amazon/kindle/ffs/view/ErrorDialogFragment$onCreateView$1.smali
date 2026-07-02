.class final Lcom/amazon/kindle/ffs/view/ErrorDialogFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "ErrorDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 31
    sget-object p1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->restartSetup()V

    .line 32
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
