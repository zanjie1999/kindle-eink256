.class public Lcom/amazon/kcp/reader/ui/BookLayoutFactory;
.super Ljava/lang/Object;
.source "BookLayoutFactory.java"


# static fields
.field private static INSTANCE:Lcom/amazon/kcp/reader/ui/BookLayoutFactory;


# instance fields
.field private decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/IBookLayoutProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->providers:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->decorators:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/BookLayoutFactory;
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->INSTANCE:Lcom/amazon/kcp/reader/ui/BookLayoutFactory;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getBookLayoutFactory(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/BookLayoutFactory;

    move-result-object p0

    sput-object p0, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->INSTANCE:Lcom/amazon/kcp/reader/ui/BookLayoutFactory;

    .line 84
    :cond_0
    sget-object p0, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->INSTANCE:Lcom/amazon/kcp/reader/ui/BookLayoutFactory;

    return-object p0
.end method


# virtual methods
.method public addDecorator(Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->decorators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLayoutProvider(Lcom/amazon/kcp/reader/ui/IBookLayoutProvider;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->providers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 23
    sget v0, Lcom/amazon/kindle/krl/R$layout;->book_layout:I

    return v0
.end method

.method public getLayoutId(Lcom/amazon/kindle/model/content/ILocalBookInfo;)I
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/IBookLayoutProvider;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "Getting layout id from provider "

    .line 30
    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 32
    invoke-interface {v1, p1}, Lcom/amazon/kcp/reader/ui/IBookLayoutProvider;->getBookLayoutId(Lcom/amazon/kindle/model/content/ILocalBookInfo;)I

    move-result v1

    const/4 v3, 0x0

    .line 34
    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Ljava/lang/Object;Z)V

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->getLayoutId()I

    move-result p1

    return p1
.end method

.method public getViewDecoration(Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;",
            "Lcom/amazon/kcp/reader/ui/ReaderLayout;",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->decorators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->decorators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator;

    .line 71
    invoke-interface {v2, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator;->getAdditionalView(Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;Landroid/view/ViewGroup;Lcom/amazon/kindle/model/content/ILocalBookItem;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
