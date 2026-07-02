.class final Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo$1;
.super Ljava/lang/Object;
.source "SampleSyncFileDownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;
    .locals 3

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->SampleSyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    new-instance v0, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0

    .line 39
    :cond_0
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

    .line 26
    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;
    .locals 0

    .line 48
    new-array p1, p1, [Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo$1;->newArray(I)[Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;

    move-result-object p1

    return-object p1
.end method
