.class public Lcom/amazon/whispersync/BlobUpload;
.super Ljava/lang/Object;
.source "BlobUpload.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "BlobUpload"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/BlobUpload;",
        ">;"
    }
.end annotation


# instance fields
.field private identifier:Ljava/lang/String;

.field private s3Location:Lcom/amazon/whispersync/S3Location;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/BlobUpload;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobUpload;->getS3Location()Lcom/amazon/whispersync/S3Location;

    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lcom/amazon/whispersync/BlobUpload;->getS3Location()Lcom/amazon/whispersync/S3Location;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-nez v3, :cond_3

    return v4

    .line 83
    :cond_3
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_4

    .line 85
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    .line 89
    :cond_4
    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/S3Location;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 90
    invoke-virtual {v2}, Lcom/amazon/whispersync/S3Location;->hashCode()I

    move-result v2

    .line 91
    invoke-virtual {v3}, Lcom/amazon/whispersync/S3Location;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_5

    return v0

    :cond_5
    if-le v2, v3, :cond_6

    return v4

    .line 98
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobUpload;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {p1}, Lcom/amazon/whispersync/BlobUpload;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_b

    if-nez v2, :cond_7

    return v0

    :cond_7
    if-nez v3, :cond_8

    return v4

    .line 105
    :cond_8
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_9

    .line 107
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_b

    return v2

    .line 111
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_a

    return v0

    :cond_a
    if-le v2, v3, :cond_b

    return v4

    .line 120
    :cond_b
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobUpload;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p1}, Lcom/amazon/whispersync/BlobUpload;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    if-eq v2, p1, :cond_10

    if-nez v2, :cond_c

    return v0

    :cond_c
    if-nez p1, :cond_d

    return v4

    .line 127
    :cond_d
    instance-of v3, v2, Ljava/lang/Comparable;

    if-eqz v3, :cond_e

    .line 129
    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_10

    return p1

    .line 133
    :cond_e
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ge v2, p1, :cond_f

    return v0

    :cond_f
    if-le v2, p1, :cond_10

    return v4

    :cond_10
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whispersync/BlobUpload;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/BlobUpload;->compareTo(Lcom/amazon/whispersync/BlobUpload;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/BlobUpload;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 62
    check-cast p1, Lcom/amazon/whispersync/BlobUpload;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/BlobUpload;->compareTo(Lcom/amazon/whispersync/BlobUpload;)I

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

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/BlobUpload;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getS3Location()Lcom/amazon/whispersync/S3Location;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/BlobUpload;->s3Location:Lcom/amazon/whispersync/S3Location;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/BlobUpload;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobUpload;->getS3Location()Lcom/amazon/whispersync/S3Location;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobUpload;->getS3Location()Lcom/amazon/whispersync/S3Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/S3Location;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 51
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobUpload;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobUpload;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 52
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobUpload;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/BlobUpload;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/whispersync/BlobUpload;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setS3Location(Lcom/amazon/whispersync/S3Location;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/whispersync/BlobUpload;->s3Location:Lcom/amazon/whispersync/S3Location;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/whispersync/BlobUpload;->url:Ljava/lang/String;

    return-void
.end method
