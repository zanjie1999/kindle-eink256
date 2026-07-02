.class final Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog$updateData$1;
.super Ljava/lang/Object;
.source "AlreadyAtFprAlertDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog$updateData$1;->this$0:Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog$updateData$1;->this$0:Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->getDialogMetricsRecorder$KindleReaderLibrary_release()Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v0, Lcom/amazon/kcp/reader/DialogAction;->OK:Lcom/amazon/kcp/reader/DialogAction;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->reportLprSyncAction(Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kcp/reader/DialogAction;)V

    return-void
.end method
