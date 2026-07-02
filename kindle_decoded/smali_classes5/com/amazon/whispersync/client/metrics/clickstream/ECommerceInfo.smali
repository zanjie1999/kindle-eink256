.class public Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;
.super Ljava/lang/Object;
.source "ECommerceInfo.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamInfo;


# instance fields
.field mIsGlanceView:Z

.field mIsPrimeEligibleItem:Z

.field mOrderData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPageAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->validateString(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->validateMap(Ljava/util/Map;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->mPageAction:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->mOrderData:Ljava/util/Map;

    return-void
.end method

.method private addInitialDataPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->ECOMMERCE_PAGE_ACTION:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->mPageAction:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->ORDER_DATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->mOrderData:Ljava/util/Map;

    invoke-static {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validateMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Map. Cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateString(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid string. Cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->addInitialDataPoints(Ljava/util/List;)V

    .line 70
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_PRIME_ELIGIBLE_ITEM:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->mIsPrimeEligibleItem:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_GLANCE_VIEW:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->mIsGlanceView:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isGlanceView(Ljava/lang/Boolean;)Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;
    .locals 0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->mIsGlanceView:Z

    return-object p0
.end method

.method public isPrimeEligibleItem(Ljava/lang/Boolean;)Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;
    .locals 0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ECommerceInfo;->mIsPrimeEligibleItem:Z

    return-object p0
.end method
