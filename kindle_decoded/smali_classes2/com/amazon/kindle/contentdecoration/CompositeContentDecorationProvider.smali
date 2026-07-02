.class public Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;
.super Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;
.source "CompositeContentDecorationProvider.java"


# instance fields
.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecorationDataProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    .line 28
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->providers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->providers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/ContentDecorationDataProvider;

    .line 41
    invoke-interface {v2, p1, p2}, Lcom/amazon/krf/platform/ContentDecorationDataProvider;->getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setContentDecorationListener(Lcom/amazon/krf/platform/ContentDecorationListener;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->setContentDecorationListener(Lcom/amazon/krf/platform/ContentDecorationListener;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/CompositeContentDecorationProvider;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/ContentDecorationDataProvider;

    .line 61
    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/ContentDecorationDataProvider;->setContentDecorationListener(Lcom/amazon/krf/platform/ContentDecorationListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
