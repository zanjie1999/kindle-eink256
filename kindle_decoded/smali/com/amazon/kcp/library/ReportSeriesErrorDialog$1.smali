.class Lcom/amazon/kcp/library/ReportSeriesErrorDialog$1;
.super Ljava/lang/Object;
.source "ReportSeriesErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ReportSeriesErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ReportSeriesErrorDialog;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ReportSeriesErrorDialog;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$1;->this$0:Lcom/amazon/kcp/library/ReportSeriesErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$1;->this$0:Lcom/amazon/kcp/library/ReportSeriesErrorDialog;

    invoke-static {v0}, Lcom/amazon/kcp/library/ReportSeriesErrorDialog;->access$000(Lcom/amazon/kcp/library/ReportSeriesErrorDialog;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$1;->this$0:Lcom/amazon/kcp/library/ReportSeriesErrorDialog;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/LibraryDialogFragment;->onOkClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method
