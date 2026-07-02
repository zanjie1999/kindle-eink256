.class public final Lcom/amazon/kcp/reader/readingprogress/MrprAlertDialog;
.super Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;
.source "MrprAlertDialog.kt"


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/reader/ReaderActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "readerActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;-><init>(ILcom/amazon/kcp/reader/ReaderActivity;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->getDialogMetricsRecorder$KindleReaderLibrary_release()Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->onShowMrprDialogEvent(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 24
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->onShow(Landroid/content/DialogInterface;)V

    return-void
.end method
