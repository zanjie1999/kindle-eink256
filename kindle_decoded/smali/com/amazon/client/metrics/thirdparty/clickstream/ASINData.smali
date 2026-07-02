.class public Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;
.super Ljava/lang/Object;
.source "ASINData.java"


# instance fields
.field mGroupingASIN:Ljava/lang/String;

.field mProductGLID:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;->mGroupingASIN:Ljava/lang/String;

    .line 44
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;->mProductGLID:Ljava/lang/Long;

    .line 45
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;->validate()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grouping ASIN and Product GLID must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDatapoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->GROUPING_ASIN:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;->mGroupingASIN:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PRODUCT_GLID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;->mProductGLID:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected validate()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;->mGroupingASIN:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;->mProductGLID:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
