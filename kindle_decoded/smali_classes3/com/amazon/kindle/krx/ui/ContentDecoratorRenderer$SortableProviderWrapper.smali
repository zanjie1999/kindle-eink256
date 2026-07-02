.class Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;
.super Ljava/lang/Object;
.source "ContentDecoratorRenderer.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortableProviderWrapper"
.end annotation


# instance fields
.field private style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

.field private wrappedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;->wrappedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;->getDecorationStlyeFromProviderClassHack(Lcom/amazon/kindle/krx/providers/ISortableProvider;)Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-void
.end method

.method private getDecorationStlyeFromProviderClassHack(Lcom/amazon/kindle/krx/providers/ISortableProvider;)Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ">;)",
            "Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 86
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Custom:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    const-string v1, "com.audible.hushpuppy.reader.ui.readalong.HighlightTextDecoratorProvider"

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    goto :goto_0

    :cond_0
    const-string v1, "com.amazon.klo.HighlightProvider"

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    goto :goto_0

    :cond_1
    const-string v1, "com.amazon.phl.provider.ContentDecorationProvider"

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->Line:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown content decoration provider class! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;->get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;->wrappedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;->style:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;->wrappedProvider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/ISortableProvider;->getPriority(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 50
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;->getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I

    move-result p1

    return p1
.end method
