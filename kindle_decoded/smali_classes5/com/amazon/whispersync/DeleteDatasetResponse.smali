.class public Lcom/amazon/whispersync/DeleteDatasetResponse;
.super Lcom/amazon/whispersync/HttpResponse;
.source "DeleteDatasetResponse.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "DeleteDatasetResponse"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# instance fields
.field private dataset:Lcom/amazon/whispersync/Dataset;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/whispersync/HttpResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/HttpResponse;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_1
    instance-of v1, p1, Lcom/amazon/whispersync/DeleteDatasetResponse;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 55
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/DeleteDatasetResponse;

    .line 57
    invoke-virtual {p0}, Lcom/amazon/whispersync/DeleteDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v3

    .line 58
    invoke-virtual {v1}, Lcom/amazon/whispersync/DeleteDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v1

    if-eq v3, v1, :cond_7

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-nez v1, :cond_4

    return v2

    .line 64
    :cond_4
    instance-of v4, v3, Ljava/lang/Comparable;

    if-eqz v4, :cond_5

    .line 66
    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 70
    :cond_5
    invoke-virtual {v3, v1}, Lcom/amazon/whispersync/Dataset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 71
    invoke-virtual {v3}, Lcom/amazon/whispersync/Dataset;->hashCode()I

    move-result v3

    .line 72
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->hashCode()I

    move-result v1

    if-ge v3, v1, :cond_6

    return v0

    :cond_6
    if-le v3, v1, :cond_7

    return v2

    .line 78
    :cond_7
    invoke-super {p0, p1}, Lcom/amazon/whispersync/HttpResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whispersync/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/DeleteDatasetResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/DeleteDatasetResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 41
    check-cast p1, Lcom/amazon/whispersync/DeleteDatasetResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/DeleteDatasetResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

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
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/DeleteDatasetResponse;->dataset:Lcom/amazon/whispersync/Dataset;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/amazon/whispersync/DeleteDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/DeleteDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    invoke-super {p0}, Lcom/amazon/whispersync/HttpResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setDataset(Lcom/amazon/whispersync/Dataset;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/whispersync/DeleteDatasetResponse;->dataset:Lcom/amazon/whispersync/Dataset;

    return-void
.end method
