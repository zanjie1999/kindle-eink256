.class public Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;
.super Ljava/lang/Object;
.source "GraphicalHighlightCacheKey.java"


# instance fields
.field private end:Ljava/lang/String;

.field private height:Ljava/lang/Integer;

.field private start:Ljava/lang/String;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->start:Ljava/lang/String;

    .line 18
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->end:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->width:Ljava/lang/Integer;

    .line 20
    iput-object p4, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->height:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 30
    const-class v2, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    check-cast p1, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;

    .line 37
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->end:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->end:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 41
    :cond_2
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->height:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->height:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 45
    :cond_3
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->start:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->start:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 49
    :cond_4
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->width:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->width:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->start:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->end:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->width:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;->height:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
