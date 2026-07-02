.class public final Lcom/amazon/kcp/reader/readingprogress/ReadingProgressDialogBuilder;
.super Ljava/lang/Object;
.source "ReadingProgressDialogBuilder.kt"


# instance fields
.field private final readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1

    const-string v0, "readerActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressDialogBuilder;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-void
.end method


# virtual methods
.method public final build(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 23
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/readingprogress/MrprAlertDialog;

    iget-object v1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressDialogBuilder;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {v0, p1, v1, p2}, Lcom/amazon/kcp/reader/readingprogress/MrprAlertDialog;-><init>(ILcom/amazon/kcp/reader/ReaderActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog;

    iget-object v1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressDialogBuilder;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {v0, p1, v1, p2}, Lcom/amazon/kcp/reader/readingprogress/AlreadyAtFprAlertDialog;-><init>(ILcom/amazon/kcp/reader/ReaderActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 24
    :cond_2
    new-instance v0, Lcom/amazon/kcp/reader/readingprogress/FprAlertDialog;

    iget-object v1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressDialogBuilder;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {v0, p1, v1, p2}, Lcom/amazon/kcp/reader/readingprogress/FprAlertDialog;-><init>(ILcom/amazon/kcp/reader/ReaderActivity;Landroid/os/Bundle;)V

    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method
