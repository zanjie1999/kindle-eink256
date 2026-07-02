.class Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter$1;
.super Ljava/lang/Object;
.source "StatsResponseConverter.java"

# interfaces
.implements Lcom/audible/application/stats/util/IHttpClientManager$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;->convertResponse(ILjava/util/Map;[B)Lcom/audible/application/stats/util/IHttpClientManager$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$responseBody:[B

.field final synthetic val$responseCode:I


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;I[BLjava/util/Map;)V
    .locals 0

    .line 28
    iput p2, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter$1;->val$responseCode:I

    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter$1;->val$responseBody:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseAsString()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter$1;->val$responseBody:[B

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Response body is null!. Returning null."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter$1;->val$responseBody:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsResponseConverter$1;->val$responseCode:I

    return v0
.end method
