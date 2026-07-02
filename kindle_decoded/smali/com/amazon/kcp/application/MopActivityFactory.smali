.class public Lcom/amazon/kcp/application/MopActivityFactory;
.super Ljava/lang/Object;
.source "MopActivityFactory.java"

# interfaces
.implements Lcom/amazon/kcp/application/ActivityFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getActivity(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDoc;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            ">;"
        }
    .end annotation

    .line 25
    instance-of v0, p1, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 29
    const-class v0, Lcom/amazon/kcp/reader/MopReaderActivity;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getReaderActivity(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/MopActivityFactory;->getActivity(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getReddingActivity(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/android/docviewer/KindleDoc;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p2}, Lcom/amazon/kcp/application/MopActivityFactory;->getActivity(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
