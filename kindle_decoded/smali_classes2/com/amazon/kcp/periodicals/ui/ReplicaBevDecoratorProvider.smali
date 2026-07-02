.class public Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;
.super Ljava/lang/Object;
.source "ReplicaBevDecoratorProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field private bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

.field private cachedAsin:Ljava/lang/String;

.field private periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider$1;-><init>(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 52
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->cachedAsin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->cachedAsin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    return-object p1
.end method

.method static synthetic access$202(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    return-object p1
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
    .locals 3

    .line 58
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 62
    :goto_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 71
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->cachedAsin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 72
    :cond_3
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p1, v1}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    .line 73
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->cachedAsin:Ljava/lang/String;

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    return-object p1

    .line 78
    :cond_5
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    .line 79
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->cachedAsin:Ljava/lang/String;

    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecoratorProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
