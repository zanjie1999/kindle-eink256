.class final Lcom/audible/mobile/download/service/SyncFileDownloadInfo$1;
.super Ljava/lang/Object;
.source "SyncFileDownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/SyncFileDownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/download/service/SyncFileDownloadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/download/service/SyncFileDownloadInfo;
    .locals 3

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/audible/mobile/download/service/DownloadItemType;->SyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v0, Lcom/audible/mobile/download/service/SyncFileDownloadInfo;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/SyncFileDownloadInfo;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcom/audible/mobile/download/service/SyncFileDownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0

    .line 37
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

    .line 24
    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/service/SyncFileDownloadInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/download/service/SyncFileDownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/download/service/SyncFileDownloadInfo;
    .locals 0

    .line 46
    new-array p1, p1, [Lcom/audible/mobile/download/service/SyncFileDownloadInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/service/SyncFileDownloadInfo$1;->newArray(I)[Lcom/audible/mobile/download/service/SyncFileDownloadInfo;

    move-result-object p1

    return-object p1
.end method
