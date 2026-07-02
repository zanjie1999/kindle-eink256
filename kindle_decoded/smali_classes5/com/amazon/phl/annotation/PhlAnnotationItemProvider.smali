.class public Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;
.super Ljava/lang/Object;
.source "PhlAnnotationItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.phl.annotation.PhlAnnotationItemProvider"


# instance fields
.field private final phlManager:Lcom/amazon/phl/PopularHighlightsManager;

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;->TAG:Ljava/lang/String;

    const-string v1, "PHL provider instantiated."

    invoke-static {v0, v1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p2}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 54
    invoke-static {p1}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 55
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 56
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 57
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 58
    iput-object p2, p0, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;->phlManager:Lcom/amazon/phl/PopularHighlightsManager;

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;->resources:Landroid/content/res/Resources;

    .line 60
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    return-void
.end method


# virtual methods
.method public getActionHandler()Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemActionHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItems(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;->TAG:Ljava/lang/String;

    const-string v1, "PHL annotation provider asked for items."

    invoke-static {v0, v1}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;->phlManager:Lcom/amazon/phl/PopularHighlightsManager;

    invoke-virtual {v0, p1}, Lcom/amazon/phl/PopularHighlightsManager;->getPopularHighlightsToDisplay(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/List;

    move-result-object p1

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    iget-object v1, p0, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/popularhighlights/R$drawable;->menu_popular_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v2

    const-string v3, "currentBookNavigator is null; cannot extract annotaiton locations."

    .line 78
    invoke-static {v2, v3}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    const-string/jumbo v3, "positionFactory is null; cannot extract annotation locations."

    .line 80
    invoke-static {v2, v3}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/phl/model/PopularHighlight;

    .line 84
    :try_start_0
    invoke-virtual {v3}, Lcom/amazon/phl/model/PopularHighlight;->getStartPosition()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    .line 85
    invoke-virtual {v3}, Lcom/amazon/phl/model/PopularHighlight;->getEndPosition()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    .line 86
    iget-object v6, p0, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;->resources:Landroid/content/res/Resources;

    sget v7, Lcom/amazon/kindle/popularhighlights/R$plurals;->popularhighlights_annotation_item_label:I

    .line 88
    invoke-virtual {v3}, Lcom/amazon/phl/model/PopularHighlight;->getNumHighlighters()I

    move-result v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/amazon/phl/model/PopularHighlight;->getNumHighlighters()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v10

    .line 87
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 90
    new-instance v6, Lcom/amazon/phl/annotation/PhlAnnotation;

    invoke-direct {v6, v4, v5, v3, v1}, Lcom/amazon/phl/annotation/PhlAnnotation;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 92
    sget-object v4, Lcom/amazon/phl/annotation/PhlAnnotationItemProvider;->TAG:Ljava/lang/String;

    const-string v5, "Exception creating PhlAnnotation."

    invoke-static {v4, v5, v3}, Lcom/amazon/phl/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRenderer()Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemRenderer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
