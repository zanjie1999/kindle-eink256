.class public abstract Lcom/amazon/whispersync/BlobRequest;
.super Lcom/amazon/whispersync/CustomerRequest;
.source "BlobRequest.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "BlobRequest"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# instance fields
.field private blobIdentifier:Ljava/lang/String;


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
    instance-of v1, p1, Lcom/amazon/whispersync/BlobRequest;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 55
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/BlobRequest;

    .line 57
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobRequest;->getBlobIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v1}, Lcom/amazon/whispersync/BlobRequest;->getBlobIdentifier()Ljava/lang/String;

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
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ge v3, v1, :cond_6

    return v0

    :cond_6
    if-le v3, v1, :cond_7

    return v2

    .line 78
    :cond_7
    invoke-super {p0, p1}, Lcom/amazon/whispersync/CustomerRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whispersync/HttpRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/BlobRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

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
    instance-of v1, p1, Lcom/amazon/whispersync/BlobRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 41
    check-cast p1, Lcom/amazon/whispersync/BlobRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/BlobRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

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

.method public getBlobIdentifier()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/BlobRequest;->blobIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobRequest;->getBlobIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobRequest;->getBlobIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    invoke-super {p0}, Lcom/amazon/whispersync/CustomerRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setBlobIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/whispersync/BlobRequest;->blobIdentifier:Ljava/lang/String;

    return-void
.end method
