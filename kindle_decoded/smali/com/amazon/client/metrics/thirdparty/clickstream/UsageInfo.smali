.class public Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;
.super Ljava/lang/Object;
.source "UsageInfo.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/clickstream/ClickStreamInfo;


# instance fields
.field mASINData:Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;

.field mHitType:Ljava/lang/String;

.field mIsCustomerHit:Ljava/lang/Boolean;

.field mIsPrimeCustomer:Ljava/lang/Boolean;

.field mPageAction:Ljava/lang/String;

.field mPageAssemblyType:Ljava/lang/String;

.field mPageType:Ljava/lang/String;

.field mPageTypeID:Ljava/lang/String;

.field mSiteVariant:Ljava/lang/String;

.field mSubPageType:Ljava/lang/String;

.field mTabID:Ljava/lang/String;

.field mTeamName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Page Type"

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->validateString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Hit Type"

    .line 45
    invoke-direct {p0, v0, p2}, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->validateString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Team Name"

    .line 46
    invoke-direct {p0, v0, p3}, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->validateString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Site Variant"

    .line 47
    invoke-direct {p0, v0, p4}, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->validateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mPageType:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mHitType:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mTeamName:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mSiteVariant:Ljava/lang/String;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private addAsinDataPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 237
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mASINData:Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;

    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->isASINDataEmpty(Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mPageTypeID:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mASINData:Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;->getDatapoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    .line 247
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private addInitialDataPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;)V"
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mPageType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->HIT_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mHitType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->TEAM_NAME:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mTeamName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->SITE_VARIANT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mSiteVariant:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isASINDataEmpty(Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;)Z
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mASINData:Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    iget-object v0, p1, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;->mGroupingASIN:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 203
    iget-object p1, p1, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;->mProductGLID:Ljava/lang/Long;

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private validateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 195
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s cannot be null or empty"

    .line 196
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getDataPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->addInitialDataPoints(Ljava/util/List;)V

    .line 213
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_ACTION:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mPageAction:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->SUB_PAGE_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mSubPageType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_TYPE_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mPageTypeID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->TAB_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mTabID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_ASSEMBLY_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mPageAssemblyType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mIsCustomerHit:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 219
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IS_CUSTOMER_HIT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mIsCustomerHit:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mIsPrimeCustomer:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 222
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IS_PRIME_CUSTOMER:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mIsPrimeCustomer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->addAsinDataPoints(Ljava/util/List;)V

    return-object v0
.end method

.method public setASINData(Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;)Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mASINData:Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;

    return-object p0
.end method

.method public setSubPageType(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/UsageInfo;->mSubPageType:Ljava/lang/String;

    return-object p0
.end method
