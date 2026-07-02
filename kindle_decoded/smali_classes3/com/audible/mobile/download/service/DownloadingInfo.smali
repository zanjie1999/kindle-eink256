.class public Lcom/audible/mobile/download/service/DownloadingInfo;
.super Ljava/lang/Object;
.source "DownloadingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/download/service/DownloadingInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/download/service/DownloadingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected contentLength:J

.field protected info:Lcom/audible/mobile/download/service/DownloadInfo;

.field protected progressBytes:J

.field protected state:Lcom/audible/mobile/download/service/DownloadingInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/audible/mobile/download/service/DownloadingInfo$1;

    invoke-direct {v0}, Lcom/audible/mobile/download/service/DownloadingInfo$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 144
    const-class v0, Lcom/audible/mobile/download/service/DownloadingInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/download/service/DownloadInfo;

    iput-object v0, p0, Lcom/audible/mobile/download/service/DownloadingInfo;->info:Lcom/audible/mobile/download/service/DownloadInfo;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/download/service/DownloadingInfo$State;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/download/service/DownloadingInfo$State;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/download/service/DownloadingInfo;->state:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/audible/mobile/download/service/DownloadingInfo;->progressBytes:J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/audible/mobile/download/service/DownloadingInfo;->contentLength:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/audible/mobile/download/service/DownloadingInfo;->info:Lcom/audible/mobile/download/service/DownloadInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object p2, p0, Lcom/audible/mobile/download/service/DownloadingInfo;->state:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-wide v0, p0, Lcom/audible/mobile/download/service/DownloadingInfo;->progressBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-wide v0, p0, Lcom/audible/mobile/download/service/DownloadingInfo;->contentLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
