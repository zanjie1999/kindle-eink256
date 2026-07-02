.class public Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;
.super Lcom/audible/mobile/download/service/DownloadInfo;
.source "SampleSyncFileDownloadInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aBookASIN:Ljava/lang/String;

.field private eBookACR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo$1;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/audible/mobile/download/service/DownloadInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadItemType()Lcom/audible/mobile/download/service/DownloadItemType;
    .locals 1

    .line 67
    sget-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->SampleSyncFile:Lcom/audible/mobile/download/service/DownloadItemType;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/audible/mobile/download/service/DownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;->eBookACR:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;->aBookASIN:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/download/service/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    iget-object p2, p0, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;->eBookACR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/audible/mobile/download/service/SampleSyncFileDownloadInfo;->aBookASIN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
