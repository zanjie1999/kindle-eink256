.class final Lcom/audible/hushpuppy/controller/audible/stats/http/ByteArrayResponseConverter;
.super Ljava/lang/Object;
.source "ByteArrayResponseConverter.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(ILjava/util/Map;[B)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/stats/http/ByteArrayResponseConverter;->convertResponse(ILjava/util/Map;[B)[B

    return-object p3
.end method

.method public convertResponse(ILjava/util/Map;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)[B"
        }
    .end annotation

    return-object p3
.end method
