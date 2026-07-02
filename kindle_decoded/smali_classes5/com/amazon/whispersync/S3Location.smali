.class public Lcom/amazon/whispersync/S3Location;
.super Ljava/lang/Object;
.source "S3Location.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "S3Location"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/S3Location;",
        ">;"
    }
.end annotation


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private bucket:Ljava/lang/String;

.field private expires:J

.field private key:Ljava/lang/String;

.field private s3Url:Ljava/lang/String;

.field private secretAccessKey:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/S3Location;)I
    .locals 8

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {p1}, Lcom/amazon/whispersync/S3Location;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-nez v3, :cond_3

    return v4

    .line 128
    :cond_3
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_4

    .line 130
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    .line 134
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 135
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 136
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_5

    return v0

    :cond_5
    if-le v2, v3, :cond_6

    return v4

    .line 143
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p1}, Lcom/amazon/whispersync/S3Location;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_b

    if-nez v2, :cond_7

    return v0

    :cond_7
    if-nez v3, :cond_8

    return v4

    .line 150
    :cond_8
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_9

    .line 152
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_b

    return v2

    .line 156
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 157
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 158
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_a

    return v0

    :cond_a
    if-le v2, v3, :cond_b

    return v4

    .line 165
    :cond_b
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {p1}, Lcom/amazon/whispersync/S3Location;->getAccessKeyId()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_10

    if-nez v2, :cond_c

    return v0

    :cond_c
    if-nez v3, :cond_d

    return v4

    .line 172
    :cond_d
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_e

    .line 174
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_10

    return v2

    .line 178
    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 180
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_f

    return v0

    :cond_f
    if-le v2, v3, :cond_10

    return v4

    .line 187
    :cond_10
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getS3Url()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {p1}, Lcom/amazon/whispersync/S3Location;->getS3Url()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_15

    if-nez v2, :cond_11

    return v0

    :cond_11
    if-nez v3, :cond_12

    return v4

    .line 194
    :cond_12
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_13

    .line 196
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_15

    return v2

    .line 200
    :cond_13
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 201
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 202
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_14

    return v0

    :cond_14
    if-le v2, v3, :cond_15

    return v4

    .line 209
    :cond_15
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p1}, Lcom/amazon/whispersync/S3Location;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1a

    if-nez v2, :cond_16

    return v0

    :cond_16
    if-nez v3, :cond_17

    return v4

    .line 216
    :cond_17
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_18

    .line 218
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1a

    return v2

    .line 222
    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 223
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 224
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_19

    return v0

    :cond_19
    if-le v2, v3, :cond_1a

    return v4

    .line 231
    :cond_1a
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getBucket()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {p1}, Lcom/amazon/whispersync/S3Location;->getBucket()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1f

    if-nez v2, :cond_1b

    return v0

    :cond_1b
    if-nez v3, :cond_1c

    return v4

    .line 238
    :cond_1c
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_1d

    .line 240
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1f

    return v2

    .line 244
    :cond_1d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 245
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 246
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_1e

    return v0

    :cond_1e
    if-le v2, v3, :cond_1f

    return v4

    .line 252
    :cond_1f
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getExpires()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/S3Location;->getExpires()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_20

    return v0

    .line 254
    :cond_20
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getExpires()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/S3Location;->getExpires()J

    move-result-wide v5

    cmp-long p1, v2, v5

    if-lez p1, :cond_21

    return v4

    :cond_21
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whispersync/S3Location;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/S3Location;->compareTo(Lcom/amazon/whispersync/S3Location;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/S3Location;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 107
    check-cast p1, Lcom/amazon/whispersync/S3Location;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/S3Location;->compareTo(Lcom/amazon/whispersync/S3Location;)I

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

.method public getAccessKeyId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/S3Location;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/S3Location;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .locals 2
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 80
    iget-wide v0, p0, Lcom/amazon/whispersync/S3Location;->expires:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/S3Location;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getS3Url()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/S3Location;->s3Url:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretAccessKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/S3Location;->secretAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/whispersync/S3Location;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 92
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 93
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getAccessKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 94
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getS3Url()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getS3Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    .line 95
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    .line 96
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getBucket()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    .line 97
    invoke-virtual {p0}, Lcom/amazon/whispersync/S3Location;->getExpires()J

    move-result-wide v1

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/whispersync/S3Location;->accessKeyId:Ljava/lang/String;

    return-void
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/whispersync/S3Location;->bucket:Ljava/lang/String;

    return-void
.end method

.method public setExpires(J)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lcom/amazon/whispersync/S3Location;->expires:J

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/whispersync/S3Location;->key:Ljava/lang/String;

    return-void
.end method

.method public setS3Url(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/whispersync/S3Location;->s3Url:Ljava/lang/String;

    return-void
.end method

.method public setSecretAccessKey(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/whispersync/S3Location;->secretAccessKey:Ljava/lang/String;

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/S3Location;->sessionToken:Ljava/lang/String;

    return-void
.end method
