.class public Lcom/audible/mobile/download/service/AudioBookSidecarInfo;
.super Lcom/audible/mobile/download/service/DownloadInfo;
.source "AudioBookSidecarInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/download/service/AudioBookSidecarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private format:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/audible/mobile/download/service/AudioBookSidecarInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/audible/mobile/download/service/AudioBookSidecarInfo$1;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/AudioBookSidecarInfo$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/download/service/AudioBookSidecarInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/audible/mobile/download/service/DownloadInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadItemType()Lcom/audible/mobile/download/service/DownloadItemType;
    .locals 1

    .line 52
    sget-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->AudiobookSidecar:Lcom/audible/mobile/download/service/DownloadItemType;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/audible/mobile/download/service/DownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/download/service/AudioBookSidecarInfo;->format:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/download/service/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    iget-object p2, p0, Lcom/audible/mobile/download/service/AudioBookSidecarInfo;->format:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
