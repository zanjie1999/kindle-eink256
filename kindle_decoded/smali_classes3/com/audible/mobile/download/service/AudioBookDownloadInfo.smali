.class public Lcom/audible/mobile/download/service/AudioBookDownloadInfo;
.super Lcom/audible/mobile/download/service/DownloadInfo;
.source "AudioBookDownloadInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/download/service/AudioBookDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARTIAL_EXTENSION:Ljava/lang/String; = ".partial"


# instance fields
.field private asin:Ljava/lang/String;

.field isSample:Z

.field private tempFilePath:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/audible/mobile/download/service/AudioBookDownloadInfo$1;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/AudioBookDownloadInfo$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/download/service/AudioBookDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/audible/mobile/download/service/DownloadInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadItemType()Lcom/audible/mobile/download/service/DownloadItemType;
    .locals 1

    .line 63
    sget-object v0, Lcom/audible/mobile/download/service/DownloadItemType;->Audiobook:Lcom/audible/mobile/download/service/DownloadItemType;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/audible/mobile/download/service/DownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/download/service/AudioBookDownloadInfo;->asin:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/download/service/AudioBookDownloadInfo;->username:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/audible/mobile/download/service/AudioBookDownloadInfo;->isSample:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/download/service/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    iget-object p2, p0, Lcom/audible/mobile/download/service/AudioBookDownloadInfo;->asin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/audible/mobile/download/service/AudioBookDownloadInfo;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-boolean p2, p0, Lcom/audible/mobile/download/service/AudioBookDownloadInfo;->isSample:Z

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
