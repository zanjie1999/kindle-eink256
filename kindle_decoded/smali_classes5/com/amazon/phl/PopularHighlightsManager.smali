.class public Lcom/amazon/phl/PopularHighlightsManager;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "PopularHighlightsManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/settings/ISettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;",
        "Lcom/amazon/kindle/krx/settings/ISettingsChangeListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISABLE_MESSAGE_THRESHOLD:I = 0x3

.field private static final NO_PHLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/phl/model/PopularHighlight;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.phl.PopularHighlightsManager"


# instance fields
.field private final bookIdToHighlights:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/phl/model/PopularHighlight;",
            ">;>;"
        }
    .end annotation
.end field

.field private phlClicks:I

.field private volatile phlsEnabled:Z

.field private provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final sidecarReader:Lcom/amazon/phl/parser/SidecarReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/amazon/phl/PopularHighlightsManager;->NO_PHLS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/parser/SidecarReader;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/phl/PopularHighlightsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->bookIdToHighlights:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v0, "sidecarReader cannot be null"

    .line 56
    invoke-static {p2, v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/amazon/phl/PopularHighlightsManager;->sidecarReader:Lcom/amazon/phl/parser/SidecarReader;

    .line 58
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/phl/settings/PHLSettingUtil;->getPopularHighlightsStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlsEnabled:Z

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlClicks:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/phl/PopularHighlightsManager;)Lcom/amazon/phl/parser/SidecarReader;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/phl/PopularHighlightsManager;->sidecarReader:Lcom/amazon/phl/parser/SidecarReader;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/phl/PopularHighlightsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/phl/PopularHighlightsManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/phl/PopularHighlightsManager;->bookIdToHighlights:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/phl/PopularHighlightsManager;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/phl/PopularHighlightsManager;->isCurrentBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/phl/PopularHighlightsManager;)Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/phl/PopularHighlightsManager;->provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/phl/PopularHighlightsManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/phl/PopularHighlightsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private isCurrentBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadFromSidecarStorage(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/amazon/phl/PopularHighlightsManager$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/phl/PopularHighlightsManager$1;-><init>(Lcom/amazon/phl/PopularHighlightsManager;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getPopularHighlightSpanningPosition(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/phl/model/PopularHighlight;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/amazon/phl/PopularHighlightsManager;->bookIdToHighlights:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    return-object v0

    .line 143
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/phl/model/PopularHighlight;

    .line 145
    invoke-virtual {v1}, Lcom/amazon/phl/model/PopularHighlight;->getStartPosition()I

    move-result v2

    if-gt v2, p2, :cond_2

    invoke-virtual {v1}, Lcom/amazon/phl/model/PopularHighlight;->getEndPosition()I

    move-result v2

    if-lt v2, p2, :cond_2

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getPopularHighlightsInRange(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/phl/model/PopularHighlight;",
            ">;"
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlsEnabled:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 111
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/amazon/phl/PopularHighlightsManager;->bookIdToHighlights:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    .line 114
    sget-object p1, Lcom/amazon/phl/PopularHighlightsManager;->NO_PHLS:Ljava/util/List;

    return-object p1

    .line 116
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/phl/model/PopularHighlight;

    .line 118
    invoke-virtual {v3, v0, v1}, Lcom/amazon/phl/model/PopularHighlight;->isOverlappingRange(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2

    .line 108
    :cond_4
    :goto_1
    sget-object p1, Lcom/amazon/phl/PopularHighlightsManager;->NO_PHLS:Ljava/util/List;

    return-object p1
.end method

.method public getPopularHighlightsToDisplay(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/phl/model/PopularHighlight;",
            ">;"
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlsEnabled:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->bookIdToHighlights:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    sget-object p1, Lcom/amazon/phl/PopularHighlightsManager;->NO_PHLS:Ljava/util/List;

    :goto_0
    return-object p1

    .line 93
    :cond_2
    :goto_1
    sget-object p1, Lcom/amazon/phl/PopularHighlightsManager;->NO_PHLS:Ljava/util/List;

    return-object p1
.end method

.method public hasPopularHighlights(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->bookIdToHighlights:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 217
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/amazon/phl/PopularHighlightsManager;->TAG:Ljava/lang/String;

    const-string v1, "onAfterContentClose received"

    invoke-static {v0, v1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->bookIdToHighlights:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 233
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/amazon/phl/PopularHighlightsManager;->TAG:Ljava/lang/String;

    const-string v1, "onAfterContentOpen received"

    invoke-static {v0, v1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 240
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/phl/PopularHighlightsManager;->loadFromSidecarStorage(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onSettingsChange(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    .line 252
    sget-object p1, Lcom/amazon/phl/PopularHighlightsManager;->TAG:Ljava/lang/String;

    const-string p2, "newValue was null in onSettingsChange"

    invoke-static {p1, p2}, Lcom/amazon/phl/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlsEnabled:Z

    .line 256
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 257
    sget-object p1, Lcom/amazon/phl/PopularHighlightsManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSettingsChange received -- phlEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlsEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlsEnabled:Z

    if-eqz p1, :cond_2

    .line 261
    iget-object p1, p0, Lcom/amazon/phl/PopularHighlightsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 263
    invoke-direct {p0, p1}, Lcom/amazon/phl/PopularHighlightsManager;->loadFromSidecarStorage(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/amazon/phl/PopularHighlightsManager;->provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    if-eqz p1, :cond_3

    .line 268
    iget-object p1, p0, Lcom/amazon/phl/PopularHighlightsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/phl/PopularHighlightsManager;->provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    iget-boolean v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlsEnabled:Z

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->changeDecorationProviderState(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onSettingsChange(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/phl/PopularHighlightsManager;->onSettingsChange(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSidecarDownload(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    sget-object v0, Lcom/amazon/phl/PopularHighlightsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSidecarDownload received for asin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/phl/PopularHighlightsManager;->isCurrentBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-direct {p0, p1}, Lcom/amazon/phl/PopularHighlightsManager;->loadFromSidecarStorage(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_2
    return-void
.end method

.method public setContentDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/amazon/phl/PopularHighlightsManager;->provider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    return-void
.end method

.method public showInfoBubble(IILcom/amazon/phl/model/PopularHighlight;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getBubbleManager()Lcom/amazon/kindle/krx/reader/IBubbleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBubbleManager;->createNewBuilder()Lcom/amazon/kindle/krx/reader/IBubbleBuilder;

    move-result-object v0

    .line 321
    iget v1, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlClicks:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlClicks:I

    .line 322
    iget-object v1, p0, Lcom/amazon/phl/PopularHighlightsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 323
    sget v3, Lcom/amazon/kindle/popularhighlights/R$plurals;->popularhighlights_annotation_item_label:I

    .line 325
    invoke-virtual {p3}, Lcom/amazon/phl/model/PopularHighlight;->getNumHighlighters()I

    move-result v4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/amazon/phl/model/PopularHighlight;->getNumHighlighters()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v5

    .line 324
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 327
    iget v2, p0, Lcom/amazon/phl/PopularHighlightsManager;->phlClicks:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    .line 328
    sget v2, Lcom/amazon/kindle/popularhighlights/R$string;->kre_aa_menu_v2_disable_popularhighlights_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-interface {v0, p3}, Lcom/amazon/kindle/krx/reader/IBubbleBuilder;->setTitle(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IBubbleBuilder;

    move-result-object p3

    invoke-interface {p3, v1}, Lcom/amazon/kindle/krx/reader/IBubbleBuilder;->setText(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IBubbleBuilder;

    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {v0, p3}, Lcom/amazon/kindle/krx/reader/IBubbleBuilder;->setText(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IBubbleBuilder;

    .line 334
    :goto_0
    iget-object p3, p0, Lcom/amazon/phl/PopularHighlightsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getBubbleManager()Lcom/amazon/kindle/krx/reader/IBubbleManager;

    move-result-object p3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBubbleBuilder;->build()Lcom/amazon/kindle/krx/reader/IBubble;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-interface {p3, v0, p1, p2}, Lcom/amazon/kindle/krx/reader/IBubbleManager;->showBubble(Lcom/amazon/kindle/krx/reader/IBubble;FF)V

    return-void
.end method
