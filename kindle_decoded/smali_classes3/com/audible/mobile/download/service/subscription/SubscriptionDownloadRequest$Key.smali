.class public Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;
.super Ljava/lang/Object;
.source "SubscriptionDownloadRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final customerId:Lcom/audible/mobile/domain/CustomerId;

.field private final lastRefreshDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/CustomerId;Ljava/util/Date;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    .line 34
    iput-object p2, p0, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;->lastRefreshDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 42
    const-class v2, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    check-cast p1, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;

    .line 47
    iget-object v2, p0, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    iget-object v3, p1, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;->lastRefreshDate:Ljava/util/Date;

    iget-object p1, p1, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;->lastRefreshDate:Ljava/util/Date;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-object v1, p0, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadRequest$Key;->lastRefreshDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
