.class Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource$1;
.super Ljava/lang/Object;
.source "HlsAudioDataSource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;
    .locals 10

    .line 29
    const-class v0, Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/audible/mobile/domain/Asin;

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/audible/mobile/domain/ACR;

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/net/Uri;

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/audible/mobile/player/AudioDataSourceType;

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/audible/mobile/player/AudioContentType;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p1

    .line 37
    new-instance v8, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 40
    check-cast v2, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    invoke-interface {v8, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;Ljava/util/Collection;Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource$1;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;
    .locals 0

    .line 48
    new-array p1, p1, [Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource$1;->newArray(I)[Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;

    move-result-object p1

    return-object p1
.end method
