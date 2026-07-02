.class final Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;
.super Ljava/lang/Object;
.source "StatsResponseConverter.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter<",
        "Lcom/audible/application/stats/util/IHttpClientManager$Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 20
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method


# virtual methods
.method public convertResponse(ILjava/util/Map;[B)Lcom/audible/application/stats/util/IHttpClientManager$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)",
            "Lcom/audible/application/stats/util/IHttpClientManager$Response;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter$1;-><init>(Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;I[BLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic convertResponse(ILjava/util/Map;[B)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;->convertResponse(ILjava/util/Map;[B)Lcom/audible/application/stats/util/IHttpClientManager$Response;

    move-result-object p1

    return-object p1
.end method
