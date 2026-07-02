.class public Lcom/amazon/whispersync/CreateBlobsRequest;
.super Lcom/amazon/whispersync/CustomerRequest;
.source "CreateBlobsRequest.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "CreateBlobsRequest"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# instance fields
.field private numberOfBlobs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/whispersync/CustomerRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/HttpRequest;)I
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
    instance-of v1, p1, Lcom/amazon/whispersync/CreateBlobsRequest;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 55
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/CreateBlobsRequest;

    .line 56
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateBlobsRequest;->getNumberOfBlobs()I

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/whispersync/CreateBlobsRequest;->getNumberOfBlobs()I

    move-result v4

    if-ge v3, v4, :cond_3

    return v0

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateBlobsRequest;->getNumberOfBlobs()I

    move-result v0

    invoke-virtual {v1}, Lcom/amazon/whispersync/CreateBlobsRequest;->getNumberOfBlobs()I

    move-result v1

    if-le v0, v1, :cond_4

    return v2

    .line 60
    :cond_4
    invoke-super {p0, p1}, Lcom/amazon/whispersync/CustomerRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whispersync/HttpRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/CreateBlobsRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

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
    instance-of v1, p1, Lcom/amazon/whispersync/CreateBlobsRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 41
    check-cast p1, Lcom/amazon/whispersync/CreateBlobsRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/CreateBlobsRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

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

.method public getNumberOfBlobs()I
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 21
    iget v0, p0, Lcom/amazon/whispersync/CreateBlobsRequest;->numberOfBlobs:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateBlobsRequest;->getNumberOfBlobs()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    invoke-super {p0}, Lcom/amazon/whispersync/CustomerRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setNumberOfBlobs(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/amazon/whispersync/CreateBlobsRequest;->numberOfBlobs:I

    return-void
.end method
