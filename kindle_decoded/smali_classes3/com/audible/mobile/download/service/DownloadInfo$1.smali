.class final Lcom/audible/mobile/download/service/DownloadInfo$1;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/download/service/DownloadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/download/service/DownloadInfo;
    .locals 3

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->Audiobook:Lcom/audible/mobile/download/service/DownloadItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v0, Lcom/audible/mobile/download/service/AudioBookDownloadInfo;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/AudioBookDownloadInfo;-><init>()V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->SyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    new-instance v0, Lcom/audible/mobile/download/service/SyncFileDownloadInfo;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/SyncFileDownloadInfo;-><init>()V

    goto :goto_0

    .line 63
    :cond_1
    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->SampleSyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    new-instance v0, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;-><init>()V

    goto :goto_0

    .line 67
    :cond_2
    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->AudiobookMetadata:Lcom/audible/mobile/download/service/DownloadItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    new-instance v0, Lcom/audible/mobile/download/service/AudiobookMetadataInfo;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/AudiobookMetadataInfo;-><init>()V

    goto :goto_0

    .line 71
    :cond_3
    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->AudiobookSidecar:Lcom/audible/mobile/download/service/DownloadItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    new-instance v0, Lcom/audible/mobile/download/service/AudioBookSidecarInfo;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/AudioBookSidecarInfo;-><init>()V

    goto :goto_0

    .line 75
    :cond_4
    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->Simple:Lcom/audible/mobile/download/service/DownloadItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    new-instance v0, Lcom/audible/mobile/download/service/SimpleDownloadInfo;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/SimpleDownloadInfo;-><init>()V

    .line 83
    :goto_0
    invoke-virtual {v0, p1}, Lcom/audible/mobile/download/service/DownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0

    .line 81
    :cond_5
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Download info type: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/service/DownloadInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/download/service/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/download/service/DownloadInfo;
    .locals 0

    .line 90
    new-array p1, p1, [Lcom/audible/mobile/download/service/DownloadInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/service/DownloadInfo$1;->newArray(I)[Lcom/audible/mobile/download/service/DownloadInfo;

    move-result-object p1

    return-object p1
.end method
