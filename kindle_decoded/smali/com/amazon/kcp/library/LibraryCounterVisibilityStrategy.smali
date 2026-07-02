.class public Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;
.super Ljava/lang/Object;
.source "LibraryCounterVisibilityStrategy.java"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;


# instance fields
.field final libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    .line 27
    invoke-virtual {p1}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->registerHandler()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/callback/ICallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/amazon/kcp/library/LibraryCounter;

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-direct {v0, p1, v1, p2}, Lcom/amazon/kcp/library/LibraryCounter;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    .line 21
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    .line 22
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->registerHandler()V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerCounterHandler(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->registerHandler()V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->libraryCounter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->unregisterHandler()V

    :goto_0
    return-void
.end method
