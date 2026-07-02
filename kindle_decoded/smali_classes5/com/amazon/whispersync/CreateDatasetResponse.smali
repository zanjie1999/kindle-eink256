.class public Lcom/amazon/whispersync/CreateDatasetResponse;
.super Lcom/amazon/whispersync/HttpResponse;
.source "CreateDatasetResponse.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "CreateDatasetResponse"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# instance fields
.field private dataset:Lcom/amazon/whispersync/Dataset;

.field private links:Lcom/amazon/whispersync/CreateDatasetLinks;

.field private subscription:Lcom/amazon/whispersync/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/whispersync/HttpResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/HttpResponse;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 71
    :cond_1
    instance-of v1, p1, Lcom/amazon/whispersync/CreateDatasetResponse;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 73
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/CreateDatasetResponse;

    .line 75
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getSubscription()Lcom/amazon/whispersync/Subscription;

    move-result-object v3

    .line 76
    invoke-virtual {v1}, Lcom/amazon/whispersync/CreateDatasetResponse;->getSubscription()Lcom/amazon/whispersync/Subscription;

    move-result-object v4

    if-eq v3, v4, :cond_7

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-nez v4, :cond_4

    return v2

    .line 82
    :cond_4
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_5

    .line 84
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_7

    return v3

    .line 88
    :cond_5
    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/Subscription;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 89
    invoke-virtual {v3}, Lcom/amazon/whispersync/Subscription;->hashCode()I

    move-result v3

    .line 90
    invoke-virtual {v4}, Lcom/amazon/whispersync/Subscription;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_6

    return v0

    :cond_6
    if-le v3, v4, :cond_7

    return v2

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getLinks()Lcom/amazon/whispersync/CreateDatasetLinks;

    move-result-object v3

    .line 98
    invoke-virtual {v1}, Lcom/amazon/whispersync/CreateDatasetResponse;->getLinks()Lcom/amazon/whispersync/CreateDatasetLinks;

    move-result-object v4

    if-eq v3, v4, :cond_c

    if-nez v3, :cond_8

    return v0

    :cond_8
    if-nez v4, :cond_9

    return v2

    .line 104
    :cond_9
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_a

    .line 106
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_c

    return v3

    .line 110
    :cond_a
    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/CreateDatasetLinks;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 111
    invoke-virtual {v3}, Lcom/amazon/whispersync/CreateDatasetLinks;->hashCode()I

    move-result v3

    .line 112
    invoke-virtual {v4}, Lcom/amazon/whispersync/CreateDatasetLinks;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_b

    return v0

    :cond_b
    if-le v3, v4, :cond_c

    return v2

    .line 119
    :cond_c
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v3

    .line 120
    invoke-virtual {v1}, Lcom/amazon/whispersync/CreateDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v1

    if-eq v3, v1, :cond_11

    if-nez v3, :cond_d

    return v0

    :cond_d
    if-nez v1, :cond_e

    return v2

    .line 126
    :cond_e
    instance-of v4, v3, Ljava/lang/Comparable;

    if-eqz v4, :cond_f

    .line 128
    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 132
    :cond_f
    invoke-virtual {v3, v1}, Lcom/amazon/whispersync/Dataset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 133
    invoke-virtual {v3}, Lcom/amazon/whispersync/Dataset;->hashCode()I

    move-result v3

    .line 134
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->hashCode()I

    move-result v1

    if-ge v3, v1, :cond_10

    return v0

    :cond_10
    if-le v3, v1, :cond_11

    return v2

    .line 140
    :cond_11
    invoke-super {p0, p1}, Lcom/amazon/whispersync/HttpResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whispersync/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/CreateDatasetResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/CreateDatasetResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 59
    check-cast p1, Lcom/amazon/whispersync/CreateDatasetResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/CreateDatasetResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDataset()Lcom/amazon/whispersync/Dataset;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/CreateDatasetResponse;->dataset:Lcom/amazon/whispersync/Dataset;

    return-object v0
.end method

.method public getLinks()Lcom/amazon/whispersync/CreateDatasetLinks;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/CreateDatasetResponse;->links:Lcom/amazon/whispersync/CreateDatasetLinks;

    return-object v0
.end method

.method public getSubscription()Lcom/amazon/whispersync/Subscription;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/CreateDatasetResponse;->subscription:Lcom/amazon/whispersync/Subscription;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getSubscription()Lcom/amazon/whispersync/Subscription;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getSubscription()Lcom/amazon/whispersync/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/Subscription;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 49
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getLinks()Lcom/amazon/whispersync/CreateDatasetLinks;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getLinks()Lcom/amazon/whispersync/CreateDatasetLinks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/CreateDatasetLinks;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 50
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 51
    invoke-super {p0}, Lcom/amazon/whispersync/HttpResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setDataset(Lcom/amazon/whispersync/Dataset;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/whispersync/CreateDatasetResponse;->dataset:Lcom/amazon/whispersync/Dataset;

    return-void
.end method

.method public setLinks(Lcom/amazon/whispersync/CreateDatasetLinks;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/CreateDatasetResponse;->links:Lcom/amazon/whispersync/CreateDatasetLinks;

    return-void
.end method

.method public setSubscription(Lcom/amazon/whispersync/Subscription;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/whispersync/CreateDatasetResponse;->subscription:Lcom/amazon/whispersync/Subscription;

    return-void
.end method
