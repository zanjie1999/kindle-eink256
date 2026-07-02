.class public abstract Lcom/audible/mobile/download/service/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/download/service/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field filePath:Ljava/lang/String;

.field key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/audible/mobile/download/service/DownloadInfo$1;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/DownloadInfo$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/audible/mobile/download/service/DownloadInfo;->key:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/audible/mobile/download/service/DownloadInfo;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDownloadItemType()Lcom/audible/mobile/download/service/DownloadItemType;
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/download/service/DownloadInfo;->key:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/download/service/DownloadInfo;->filePath:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/audible/mobile/download/service/DownloadInfo;->getDownloadItemType()Lcom/audible/mobile/download/service/DownloadItemType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/audible/mobile/download/service/DownloadInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/audible/mobile/download/service/DownloadInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
