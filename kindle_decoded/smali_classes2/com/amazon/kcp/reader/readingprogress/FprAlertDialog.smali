.class public Lcom/amazon/kcp/reader/readingprogress/FprAlertDialog;
.super Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;
.source "FprAlertDialog.kt"


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/reader/ReaderActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "readerActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;-><init>(ILcom/amazon/kcp/reader/ReaderActivity;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->onShow(Landroid/content/DialogInterface;)V

    return-void
.end method
