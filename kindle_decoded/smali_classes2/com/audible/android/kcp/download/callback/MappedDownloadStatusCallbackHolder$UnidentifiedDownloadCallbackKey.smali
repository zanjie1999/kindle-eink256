.class Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;
.super Ljava/lang/Object;
.source "MappedDownloadStatusCallbackHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnidentifiedDownloadCallbackKey"
.end annotation


# instance fields
.field private final mAirDownloadType:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

.field private final mAsin:Lcom/audible/mobile/domain/Asin;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;->mAsin:Lcom/audible/mobile/domain/Asin;

    .line 64
    iput-object p2, p0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;->mAirDownloadType:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

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

    if-eqz p1, :cond_5

    .line 72
    const-class v2, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    check-cast p1, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;

    .line 77
    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;->mAirDownloadType:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    iget-object v3, p1, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;->mAirDownloadType:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    if-eq v2, v3, :cond_2

    return v1

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;->mAsin:Lcom/audible/mobile/domain/Asin;

    iget-object p1, p1, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;->mAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;->mAsin:Lcom/audible/mobile/domain/Asin;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder$UnidentifiedDownloadCallbackKey;->mAirDownloadType:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
