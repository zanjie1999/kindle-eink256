.class public final Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;
.super Lcom/audible/mobile/player/AudioDataSource;
.source "HlsAudioDataSource.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final rightsValidations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource$1;

    invoke-direct {v0}, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/domain/ACR;",
            "Landroid/net/Uri;",
            "Lcom/audible/mobile/player/AudioDataSourceType;",
            "Lcom/audible/mobile/player/AudioContentType;",
            "Ljava/util/Collection<",
            "Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-direct/range {p0 .. p5}, Lcom/audible/mobile/player/AudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;)V

    .line 147
    iput-object p6, p0, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;->rightsValidations:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;Ljava/util/Collection;Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioContentType;Ljava/util/Collection;)V

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

    if-eqz p1, :cond_6

    .line 161
    const-class v2, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 164
    :cond_1
    invoke-super {p0, p1}, Lcom/audible/mobile/player/AudioDataSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 167
    :cond_2
    check-cast p1, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;

    .line 168
    iget-object v2, p0, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;->rightsValidations:Ljava/util/Collection;

    iget-object p1, p1, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;->rightsValidations:Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/audible/mobile/player/AudioDataSource;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 176
    iget-object v1, p0, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;->rightsValidations:Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 183
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/player/AudioDataSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    iget-object p2, p0, Lcom/audible/mobile/player/exo/hls/HlsAudioDataSource;->rightsValidations:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method
