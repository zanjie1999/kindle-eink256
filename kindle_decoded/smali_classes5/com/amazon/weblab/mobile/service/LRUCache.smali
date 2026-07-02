.class public Lcom/amazon/weblab/mobile/service/LRUCache;
.super Ljava/util/LinkedHashMap;
.source "LRUCache.java"


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


# static fields
.field private static final INITIAL_CAPACITY:I = 0x20

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private cacheSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/amazon/weblab/mobile/service/LRUCache;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 17
    iput p2, p0, Lcom/amazon/weblab/mobile/service/LRUCache;->cacheSize:I

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

    .line 26
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget v0, p0, Lcom/amazon/weblab/mobile/service/LRUCache;->cacheSize:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
