.class public Lcom/audible/mobile/player/AudioDataSource;
.super Ljava/lang/Object;
.source "AudioDataSource.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/player/AudioDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private acr:Lcom/audible/mobile/domain/ACR;

.field private asin:Lcom/audible/mobile/domain/Asin;

.field private audioContentType:Lcom/audible/mobile/player/AudioContentType;

.field private dataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

.field private licenseId:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/audible/mobile/player/AudioDataSource$1;

    invoke-direct {v0}, Lcom/audible/mobile/player/AudioDataSource$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/audible/mobile/player/AudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;)V
    .locals 6

    .line 83
    sget-object v5, Lcom/audible/mobile/player/AapAudioContentType;->Unknown:Lcom/audible/mobile/player/AapAudioContentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/player/AudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 95
    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/player/AudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "asin cannot be null."

    .line 108
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "uri cannot be null."

    .line 109
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "data source type cannot be null."

    .line 110
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "audioContentType type cannot be null."

    .line 111
    invoke-static {p5, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lcom/audible/mobile/player/AudioDataSource;->asin:Lcom/audible/mobile/domain/Asin;

    .line 113
    iput-object p2, p0, Lcom/audible/mobile/player/AudioDataSource;->acr:Lcom/audible/mobile/domain/ACR;

    .line 114
    iput-object p3, p0, Lcom/audible/mobile/player/AudioDataSource;->uri:Landroid/net/Uri;

    .line 115
    iput-object p4, p0, Lcom/audible/mobile/player/AudioDataSource;->dataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 116
    iput-object p5, p0, Lcom/audible/mobile/player/AudioDataSource;->audioContentType:Lcom/audible/mobile/player/AudioContentType;

    .line 117
    iput-object p6, p0, Lcom/audible/mobile/player/AudioDataSource;->licenseId:Ljava/lang/String;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    iput-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->asin:Lcom/audible/mobile/domain/Asin;

    .line 267
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/ACR;

    iput-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->acr:Lcom/audible/mobile/domain/ACR;

    .line 268
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->uri:Landroid/net/Uri;

    .line 269
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/AudioDataSourceType;

    iput-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->dataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 270
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/AudioContentType;

    iput-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->audioContentType:Lcom/audible/mobile/player/AudioContentType;

    .line 271
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/audible/mobile/player/AudioDataSource;->licenseId:Ljava/lang/String;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->dataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->audioContentType:Lcom/audible/mobile/player/AudioContentType;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->licenseId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 204
    :cond_1
    check-cast p1, Lcom/audible/mobile/player/AudioDataSource;

    .line 206
    iget-object v1, p0, Lcom/audible/mobile/player/AudioDataSource;->asin:Lcom/audible/mobile/domain/Asin;

    iget-object v2, p1, Lcom/audible/mobile/player/AudioDataSource;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/audible/mobile/player/AudioDataSource;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v1, :cond_3

    iget-object v2, p1, Lcom/audible/mobile/player/AudioDataSource;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/audible/mobile/player/AudioDataSource;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v1, :cond_4

    :goto_0
    return v0

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/audible/mobile/player/AudioDataSource;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/audible/mobile/player/AudioDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 215
    :cond_5
    iget-object v1, p0, Lcom/audible/mobile/player/AudioDataSource;->dataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

    iget-object v2, p1, Lcom/audible/mobile/player/AudioDataSource;->dataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

    if-eq v1, v2, :cond_6

    return v0

    .line 218
    :cond_6
    iget-object v1, p0, Lcom/audible/mobile/player/AudioDataSource;->licenseId:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v2, p1, Lcom/audible/mobile/player/AudioDataSource;->licenseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_7
    iget-object v1, p1, Lcom/audible/mobile/player/AudioDataSource;->licenseId:Ljava/lang/String;

    if-eqz v1, :cond_8

    :goto_1
    return v0

    .line 221
    :cond_8
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->audioContentType:Lcom/audible/mobile/player/AudioContentType;

    iget-object p1, p1, Lcom/audible/mobile/player/AudioDataSource;->audioContentType:Lcom/audible/mobile/player/AudioContentType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_2
    return v0
.end method

.method public getACR()Lcom/audible/mobile/domain/ACR;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->acr:Lcom/audible/mobile/domain/ACR;

    return-object v0
.end method

.method public getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->asin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getAudioContentType()Lcom/audible/mobile/player/AudioContentType;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->audioContentType:Lcom/audible/mobile/player/AudioContentType;

    return-object v0
.end method

.method public getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->dataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 229
    iget-object v1, p0, Lcom/audible/mobile/player/AudioDataSource;->acr:Lcom/audible/mobile/domain/ACR;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 230
    iget-object v1, p0, Lcom/audible/mobile/player/AudioDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 231
    iget-object v1, p0, Lcom/audible/mobile/player/AudioDataSource;->dataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 232
    iget-object v1, p0, Lcom/audible/mobile/player/AudioDataSource;->audioContentType:Lcom/audible/mobile/player/AudioContentType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 233
    iget-object v1, p0, Lcom/audible/mobile/player/AudioDataSource;->licenseId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 247
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 248
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 249
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->dataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 250
    iget-object v0, p0, Lcom/audible/mobile/player/AudioDataSource;->audioContentType:Lcom/audible/mobile/player/AudioContentType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 251
    iget-object p2, p0, Lcom/audible/mobile/player/AudioDataSource;->licenseId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
