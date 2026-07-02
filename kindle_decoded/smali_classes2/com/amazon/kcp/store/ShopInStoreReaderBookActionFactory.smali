.class public final Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory;
.super Lcom/amazon/kindle/krx/reader/BaseReaderBookActionFactory;
.source "ShopInStoreReaderBookActionFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/ReaderBookActionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory$ShopInStoreReaderBookAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BaseReaderBookActionFactory;-><init>()V

    return-void
.end method

.method private isMyActionApplicableTo(Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;)Z
    .locals 4

    .line 40
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 41
    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/content/BookFormat;->MOP:Lcom/amazon/kindle/krx/content/BookFormat;

    if-eq v0, v3, :cond_1

    .line 47
    invoke-static {p1}, Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory;->isYJOP(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static isYJOP(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    .line 52
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-ne v0, v1, :cond_1

    .line 53
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v1, :cond_1

    .line 55
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createActions(Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/reader/ReaderBookAction;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory;->isMyActionApplicableTo(Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory$ShopInStoreReaderBookAction;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory$ShopInStoreReaderBookAction;-><init>(Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;)V

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic createActions(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 28
    check-cast p1, Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory;->createActions(Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
