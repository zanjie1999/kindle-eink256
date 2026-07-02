.class public Lcom/amazon/kindle/module/StandAloneReaderActivityFactory;
.super Ljava/lang/Object;
.source "StandAloneReaderActivityFactory.java"

# interfaces
.implements Lcom/amazon/kcp/application/ActivityFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getActivityForBook(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/Class;
    .locals 2
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

    .line 36
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Lcom/amazon/kindle/module/StandAloneReaderActivityFactory;->isSimplifiedReaderRequired(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const-class p1, Lcom/amazon/kcp/reader/SimplifiedStandAloneBookReaderActivity;

    goto :goto_2

    .line 42
    :cond_0
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 43
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 44
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    instance-of v1, v0, Lcom/amazon/kcp/library/models/internal/KRFBookItem;

    if-eqz v1, :cond_4

    .line 47
    instance-of v0, p1, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isMop()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 50
    const-class p1, Lcom/amazon/kcp/reader/StandAloneMopReaderActivity;

    goto :goto_2

    .line 52
    :cond_3
    const-class p1, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    goto :goto_2

    .line 54
    :cond_4
    instance-of p1, v0, Lcom/amazon/kcp/library/models/internal/PDFBookItem;

    if-eqz p1, :cond_5

    .line 55
    const-class p1, Lcom/amazon/kcp/reader/StandAlonePdfReaderActivity;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    .line 45
    :cond_6
    :goto_1
    const-class p1, Lcom/amazon/kcp/reader/StandaloneFullDefinitionActivity;

    :goto_2
    return-object p1
.end method

.method private isSimplifiedReaderRequired(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 1

    .line 61
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p1

    .line 63
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    .line 25
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/module/StandAloneReaderActivityFactory;->getActivityForBook(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/Class;

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

    .line 32
    invoke-direct {p0, p2}, Lcom/amazon/kindle/module/StandAloneReaderActivityFactory;->getActivityForBook(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
