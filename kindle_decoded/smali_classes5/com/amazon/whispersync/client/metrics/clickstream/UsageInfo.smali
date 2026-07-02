.class public Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;
.super Ljava/lang/Object;
.source "UsageInfo.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamInfo;


# instance fields
.field mASINData:Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;

.field mCustomerID:J

.field mDatapoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->validateString(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->validateString(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p3}, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->validateString(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p4}, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->validateString(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageType:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mHitType:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mTeamName:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mSiteVariant:Ljava/lang/String;

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mDatapoints:Ljava/util/Map;

    return-void
.end method

.method private addAsinDataPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 204
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mASINData:Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;

    if-nez v0, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;->getDatapoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/client/metrics/DataPoint;

    .line 209
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
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

    .line 197
    sget-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->HIT_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mHitType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->TEAM_NAME:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mTeamName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->SITE_VARIANT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mSiteVariant:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validateString(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid string. Cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getASINData()Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mASINData:Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;

    return-object v0
.end method

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

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->addInitialDataPoints(Ljava/util/List;)V

    .line 181
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_ACTION:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageAction:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->SUB_PAGE_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mSubPageType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_TYPE_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageTypeID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->TAB_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mTabID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_ASSEMBLY_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageAssemblyType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mIsCustomerHit:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 187
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_CUSTOMER_HIT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mIsCustomerHit:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mIsPrimeCustomer:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 190
    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_PRIME_CUSTOMER:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mIsPrimeCustomer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamHelper;->addDatapoint(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->addAsinDataPoints(Ljava/util/List;)V

    return-object v0
.end method

.method public getHitType()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mHitType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageAction()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageAction:Ljava/lang/String;

    return-object v0
.end method

.method public getPageAssemblyType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageAssemblyType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageTypeID()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageTypeID:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteVariant()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mSiteVariant:Ljava/lang/String;

    return-object v0
.end method

.method public getSubPageType()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mSubPageType:Ljava/lang/String;

    return-object v0
.end method

.method public getTabID()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mTabID:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mTeamName:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomerHit()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mIsCustomerHit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPrimeCustomer()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mIsPrimeCustomer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setASINData(Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;)Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mASINData:Lcom/amazon/whispersync/client/metrics/clickstream/ASINData;

    return-object p0
.end method

.method public setIsCustomerHit(Z)Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;
    .locals 0

    .line 147
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mIsCustomerHit:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIsPrimeCustomer(Z)Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;
    .locals 0

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mIsPrimeCustomer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setPageAction(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageAction:Ljava/lang/String;

    return-object p0
.end method

.method public setPageAssemblyType(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageAssemblyType:Ljava/lang/String;

    return-object p0
.end method

.method public setPageTypeID(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mPageTypeID:Ljava/lang/String;

    return-object p0
.end method

.method public setSubPageType(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mSubPageType:Ljava/lang/String;

    return-object p0
.end method

.method public setTabID(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/clickstream/UsageInfo;->mTabID:Ljava/lang/String;

    return-object p0
.end method
