.class public final Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo;
.super Ljava/lang/Object;
.source "FavoriteMetadataInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_consumerId:J

.field private final m_metadata:Ljava/lang/String;

.field private m_type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo$1;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo;->m_consumerId:J

    .line 36
    iput-object p3, p0, Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo;->m_metadata:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo;->m_type:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo;->m_consumerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-object p2, p0, Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo;->m_metadata:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/amazon/kindle/cms/ipc/FavoriteMetadataInfo;->m_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
