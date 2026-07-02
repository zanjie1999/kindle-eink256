.class final Lcom/audible/mobile/download/service/DownloadingInfo$1;
.super Ljava/lang/Object;
.source "DownloadingInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/DownloadingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/download/service/DownloadingInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/download/service/DownloadingInfo;
    .locals 1

    .line 114
    new-instance v0, Lcom/audible/mobile/download/service/DownloadingInfo;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/DownloadingInfo;-><init>()V

    .line 115
    invoke-virtual {v0, p1}, Lcom/audible/mobile/download/service/DownloadingInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/service/DownloadingInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/download/service/DownloadingInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/download/service/DownloadingInfo;
    .locals 0

    .line 122
    new-array p1, p1, [Lcom/audible/mobile/download/service/DownloadingInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/audible/mobile/download/service/DownloadingInfo$1;->newArray(I)[Lcom/audible/mobile/download/service/DownloadingInfo;

    move-result-object p1

    return-object p1
.end method
