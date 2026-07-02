.class public Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;
.super Ljava/lang/Object;
.source "ImpressionTrackingData.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamInfo;


# instance fields
.field mImpressionData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mImpressionMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mImpressionType:Ljava/lang/String;

.field mProgramGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_PROGRAM_GROUP:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mProgramGroup:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mImpressionType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_DATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mImpressionData:Ljava/util/List;

    invoke-static {v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_METADATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mImpressionMetadata:Ljava/util/Map;

    invoke-static {v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getImpresionData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mImpressionData:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mImpressionMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getImpressionProgramGroup()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mProgramGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mImpressionType:Ljava/lang/String;

    return-object v0
.end method

.method public setImpresionData(Ljava/util/List;)Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mImpressionData:Ljava/util/List;

    return-object p0
.end method

.method public setImpressionMetadata(Ljava/util/Map;)Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mImpressionMetadata:Ljava/util/Map;

    return-object p0
.end method

.method public setImpressionProgramGroup(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mProgramGroup:Ljava/lang/String;

    return-object p0
.end method

.method public setImpressionType(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ImpressionTrackingData;->mImpressionType:Ljava/lang/String;

    return-object p0
.end method
