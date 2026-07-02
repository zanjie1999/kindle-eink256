.class public Lcom/amazon/whispersync/Blob;
.super Ljava/lang/Object;
.source "Blob.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "Blob"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/Blob;",
        ">;"
    }
.end annotation


# instance fields
.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/Blob;)I
    .locals 8

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {p1}, Lcom/amazon/whispersync/Blob;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-nez v3, :cond_3

    return v4

    .line 106
    :cond_3
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_4

    .line 108
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    .line 112
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_5

    return v0

    :cond_5
    if-le v2, v3, :cond_6

    return v4

    .line 120
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getContentLength()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/Blob;->getContentLength()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_7

    return v0

    .line 122
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getContentLength()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/Blob;->getContentLength()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-lez v7, :cond_8

    return v4

    .line 125
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getData()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {p1}, Lcom/amazon/whispersync/Blob;->getData()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_d

    if-nez v2, :cond_9

    return v0

    :cond_9
    if-nez v3, :cond_a

    return v4

    .line 132
    :cond_a
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_b

    .line 134
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_d

    return v2

    .line 138
    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_c

    return v0

    :cond_c
    if-le v2, v3, :cond_d

    return v4

    .line 147
    :cond_d
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p1}, Lcom/amazon/whispersync/Blob;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_12

    if-nez v2, :cond_e

    return v0

    :cond_e
    if-nez v3, :cond_f

    return v4

    .line 154
    :cond_f
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_10

    .line 156
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_12

    return v2

    .line 160
    :cond_10
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 161
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 162
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_11

    return v0

    :cond_11
    if-le v2, v3, :cond_12

    return v4

    .line 169
    :cond_12
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {p1}, Lcom/amazon/whispersync/Blob;->getContentType()Ljava/lang/String;

    move-result-object p1

    if-eq v2, p1, :cond_17

    if-nez v2, :cond_13

    return v0

    :cond_13
    if-nez p1, :cond_14

    return v4

    .line 176
    :cond_14
    instance-of v3, v2, Ljava/lang/Comparable;

    if-eqz v3, :cond_15

    .line 178
    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_17

    return p1

    .line 182
    :cond_15
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ge v2, p1, :cond_16

    return v0

    :cond_16
    if-le v2, p1, :cond_17

    return v4

    :cond_17
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whispersync/Blob;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/Blob;->compareTo(Lcom/amazon/whispersync/Blob;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 84
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/Blob;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 85
    check-cast p1, Lcom/amazon/whispersync/Blob;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/Blob;->compareTo(Lcom/amazon/whispersync/Blob;)I

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

.method public getContentLength()J
    .locals 2
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 33
    iget-wide v0, p0, Lcom/amazon/whispersync/Blob;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/Blob;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/Blob;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/whispersync/Blob;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/Blob;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getContentLength()J

    move-result-wide v2

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 73
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 74
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 75
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/Blob;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setContentLength(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/amazon/whispersync/Blob;->contentLength:J

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/whispersync/Blob;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/whispersync/Blob;->data:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/Blob;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/whispersync/Blob;->url:Ljava/lang/String;

    return-void
.end method
