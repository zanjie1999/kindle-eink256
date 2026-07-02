.class public abstract Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;
.super Ljava/lang/Object;
.source "MarkAsActionButtonProvider.java"

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


# instance fields
.field private final activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

.field private final goodreadsMarManager:Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final networkService:Lcom/amazon/kindle/network/INetworkService;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;Lcom/amazon/kindle/network/INetworkService;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    .line 53
    iput-object p2, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 54
    iput-object p3, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->goodreadsMarManager:Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    .line 55
    iput-object p4, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->networkService:Lcom/amazon/kindle/network/INetworkService;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;)Lcom/amazon/kcp/library/ActivityProvider;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;)Lcom/amazon/kindle/network/INetworkService;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->networkService:Lcom/amazon/kindle/network/INetworkService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;)Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->goodreadsMarManager:Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    return-object p0
.end method


# virtual methods
.method protected createMARActionButton(IILcom/amazon/kindle/krx/content/IBook$ReadState;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/amazon/kindle/krx/content/IBook$ReadState;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;-><init>(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;IILcom/amazon/kindle/krx/content/IBook$ReadState;)V

    return-object v0
.end method

.method public get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 1
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

    .line 61
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->getMARActionButton(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method

.method abstract getActionStringId()Ljava/lang/String;
.end method

.method abstract getKey()Ljava/lang/String;
.end method

.method abstract getMARActionButton(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;
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
.end method

.method abstract getMarkAsActionButtonOption()Ljava/lang/String;
.end method
