.class final Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$negativeButtonListener$1;
.super Ljava/lang/Object;
.source "RemoveArchivableFromLibraryDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$negativeButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 80
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$negativeButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->getContentDataArray()[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    const-string v1, "cancel"

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->access$reportFastMetricsOnButtonClick(Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;Ljava/lang/String;[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    .line 81
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$negativeButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
