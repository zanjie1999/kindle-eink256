.class public Lcom/amazon/kindle/krx/clipping/KRXClippingService;
.super Lcom/amazon/kindle/krx/clipping/BaseKRXClippingService;
.source "KRXClippingService.java"


# instance fields
.field private final clippingService:Lcom/amazon/kindle/clipping/IClippingService;

.field private final readerController:Lcom/amazon/kcp/reader/IReaderController;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/clipping/IClippingService;Lcom/amazon/kcp/reader/IReaderController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/krx/clipping/BaseKRXClippingService;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/krx/clipping/KRXClippingService;->clippingService:Lcom/amazon/kindle/clipping/IClippingService;

    .line 35
    iput-object p2, p0, Lcom/amazon/kindle/krx/clipping/KRXClippingService;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ClippingService and IReaderController cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isPassedBookCurrentlyOpen(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/krx/clipping/KRXClippingService;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 92
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRequestValid(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/clipping/KRXClippingService;->isPassedBookCurrentlyOpen(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "IBook instance and IPosition (start and end) cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canUpdateClippingBalance(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/clipping/KRXClippingService;->isRequestValid(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/clipping/KRXClippingService;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/clipping/KRXClippingService;->clippingService:Lcom/amazon/kindle/clipping/IClippingService;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 70
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 71
    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    .line 69
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/clipping/IClippingService;->canUpdateClippingBalance(Lcom/amazon/android/docviewer/KindleDoc;II)Z

    move-result p1

    return p1
.end method

.method public updateAndCheckClippingBalance(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/clipping/KRXClippingService;->isRequestValid(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/clipping/KRXClippingService;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/krx/clipping/KRXClippingService;->clippingService:Lcom/amazon/kindle/clipping/IClippingService;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 52
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 53
    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    .line 51
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/clipping/IClippingService;->updateAndCheckClippingBalance(Lcom/amazon/android/docviewer/KindleDoc;II)Z

    move-result p1

    return p1
.end method
