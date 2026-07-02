.class public Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;
.super Ljava/lang/Object;
.source "ASINData.java"


# instance fields
.field mGroupingASIN:Ljava/lang/String;

.field mProductGLID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatapoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->GROUPING_ASIN:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;->mGroupingASIN:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PRODUCT_GLID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;->mProductGLID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getGroupingASIN()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;->mGroupingASIN:Ljava/lang/String;

    return-object v0
.end method

.method public getProductGLID()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;->mProductGLID:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupingASIN(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;->mGroupingASIN:Ljava/lang/String;

    return-object p0
.end method

.method public setProductGLID(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;->mProductGLID:Ljava/lang/String;

    return-object p0
.end method
