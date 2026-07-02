.class public Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;
.super Ljava/lang/Object;
.source "CustomActionButtonProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/android/menu/CustomActionMenuButton;",
        "Lcom/amazon/kcp/reader/ReaderActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private actionButtonProvider:Lcom/amazon/kindle/krx/providers/IProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field

.field private delegatedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "+",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->delegatedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    .line 14
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->actionButtonProvider:Lcom/amazon/kindle/krx/providers/IProvider;

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->actionButtonProvider:Lcom/amazon/kindle/krx/providers/IProvider;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "+",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->delegatedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    .line 14
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->actionButtonProvider:Lcom/amazon/kindle/krx/providers/IProvider;

    .line 17
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->delegatedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/menu/CustomActionMenuButton;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 26
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 32
    invoke-static {v1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    new-instance v6, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-direct {v6, v1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    .line 37
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->delegatedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    if-eqz v1, :cond_3

    .line 38
    invoke-interface {v1, v6}, Lcom/amazon/kindle/krx/providers/IProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/amazon/kindle/krx/ui/IButton;

    if-eqz v5, :cond_4

    .line 40
    instance-of v0, v5, Lcom/amazon/kindle/krx/ui/IActionButton;

    if-eqz v0, :cond_2

    .line 41
    move-object v0, v5

    check-cast v0, Lcom/amazon/kindle/krx/ui/IActionButton;

    .line 42
    new-instance v1, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->delegatedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    invoke-interface {v2, v6}, Lcom/amazon/kindle/krx/providers/ISortableProvider;->getPriority(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IActionButton;->showAsAction()Z

    move-result v8

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;IZ)V

    return-object v1

    .line 44
    :cond_2
    new-instance v0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->delegatedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    invoke-interface {v1, v6}, Lcom/amazon/kindle/krx/providers/ISortableProvider;->getPriority(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, p1, v5, v6, v1}, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;I)V

    return-object v0

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->actionButtonProvider:Lcom/amazon/kindle/krx/providers/IProvider;

    if-eqz v1, :cond_4

    .line 48
    invoke-interface {v1, v6}, Lcom/amazon/kindle/krx/providers/IProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/amazon/kindle/krx/ui/IActionButton;

    if-eqz v5, :cond_4

    .line 50
    new-instance v0, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IActionButton;->getPriority()I

    move-result v7

    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IActionButton;->showAsAction()Z

    move-result v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/krx/ui/DefaultCustomActionMenuButton;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/krx/ui/IButton;Lcom/amazon/kindle/krx/content/IBook;IZ)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/CustomActionButtonProvider;->get(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/menu/CustomActionMenuButton;

    move-result-object p1

    return-object p1
.end method
