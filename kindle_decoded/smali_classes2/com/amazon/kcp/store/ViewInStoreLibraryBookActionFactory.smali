.class public final Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;
.source "ViewInStoreLibraryBookActionFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory$ViewInStoreLibraryBookAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;-><init>()V

    return-void
.end method

.method private static isMyActionApplicableTo(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Z
    .locals 2

    .line 38
    invoke-interface {p0}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0}, Lcom/amazon/kcp/store/CommonStoreUtils;->isStoreEnabledForBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public createActions(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/library/LibraryBookActionContext;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/library/LibraryBookAction;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory;->isMyActionApplicableTo(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory$ViewInStoreLibraryBookAction;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory$ViewInStoreLibraryBookAction;-><init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)V

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic createActions(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 26
    check-cast p1, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory;->createActions(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
