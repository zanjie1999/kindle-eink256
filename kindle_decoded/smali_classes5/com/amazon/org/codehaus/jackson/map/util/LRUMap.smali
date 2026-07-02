.class public Lcom/amazon/org/codehaus/jackson/map/util/LRUMap;
.super Ljava/util/LinkedHashMap;
.source "LRUMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected final _maxEntries:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x1

    .line 18
    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 19
    iput p2, p0, Lcom/amazon/org/codehaus/jackson/map/util/LRUMap;->_maxEntries:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/LRUMap;->_maxEntries:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
