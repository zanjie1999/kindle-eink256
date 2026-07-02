.class public final Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog;
.super Lcom/amazon/kcp/reader/readingprogress/FprAlertDialog;
.source "AlreadyAtFprAlertDialog.kt"


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/reader/ReaderActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "readerActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/readingprogress/FprAlertDialog;-><init>(ILcom/amazon/kcp/reader/ReaderActivity;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const-string v1, "readerActivity.docViewer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    const-string v1, "readerActivity.docViewer.annotationsManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->clearServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    .line 35
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/readingprogress/FprAlertDialog;->onShow(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public updateData()V
    .locals 3

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setIcon(I)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FprMrprMessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "this.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    sget v1, Lcom/amazon/kindle/krl/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog$updateData$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog$updateData$1;-><init>(Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
