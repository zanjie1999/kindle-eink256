.class public Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;
.super Ljava/lang/Object;
.source "LibraryContextualActionButtonProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/LibraryDownloadController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 46
    iput-object p2, p0, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;->libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    return-void
.end method


# virtual methods
.method public final get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;->libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v2}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->setEbookAndRelationship(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 60
    iget-object v0, p0, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;->libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->canShowLibraryDownloadButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;->libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-direct {v0, v1, p1, v2}, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/util/List;Lcom/audible/hushpuppy/controller/LibraryDownloadController;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/library/LibraryContextualActionButtonProvider;->get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method
