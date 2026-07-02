.class public Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;
.super Ljava/lang/Object;
.source "TextCacheKey.java"


# instance fields
.field private height:Ljava/lang/Integer;

.field private text:Ljava/lang/CharSequence;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->text:Ljava/lang/CharSequence;

    .line 15
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->width:Ljava/lang/Integer;

    .line 16
    iput-object p3, p0, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->height:Ljava/lang/Integer;

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

    if-eqz p1, :cond_5

    .line 26
    const-class v2, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    check-cast p1, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;

    .line 33
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->height:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->height:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 37
    :cond_2
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 41
    :cond_3
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->width:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->width:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->width:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;->height:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
