.class public Lcom/audible/mobile/download/service/SyncFileDownloadInfo;
.super Lcom/audible/mobile/download/service/DownloadInfo;
.source "SyncFileDownloadInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/download/service/SyncFileDownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/audible/mobile/download/service/SyncFileDownloadInfo$1;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/SyncFileDownloadInfo$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/download/service/SyncFileDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/audible/mobile/download/service/DownloadInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadItemType()Lcom/audible/mobile/download/service/DownloadItemType;
    .locals 1

    .line 65
    sget-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->SyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/audible/mobile/download/service/DownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/download/service/SyncFileDownloadInfo;->acr:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/download/service/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    iget-object p2, p0, Lcom/audible/mobile/download/service/SyncFileDownloadInfo;->acr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
