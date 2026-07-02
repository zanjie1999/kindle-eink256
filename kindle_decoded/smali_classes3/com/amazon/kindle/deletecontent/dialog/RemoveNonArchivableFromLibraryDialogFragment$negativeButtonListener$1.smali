.class final Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$negativeButtonListener$1;
.super Ljava/lang/Object;
.source "RemoveNonArchivableFromLibraryDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$negativeButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 40
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$negativeButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;

    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->access$getContentData$p(Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;)Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;

    move-result-object v0

    const-string v1, "cancel"

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->access$reportFastMetricsOnButtonClick(Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;Ljava/lang/String;Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;)V

    .line 41
    iget-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$negativeButtonListener$1;->this$0:Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
