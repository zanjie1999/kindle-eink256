.class public Lcom/amazon/kcp/notifications/ParcelableMetadata;
.super Ljava/lang/Object;
.source "ParcelableMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kcp/notifications/ParcelableMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private campaignName:Ljava/lang/String;

.field private messageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/amazon/kcp/notifications/ParcelableMetadata$1;

    invoke-direct {v0}, Lcom/amazon/kcp/notifications/ParcelableMetadata$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/notifications/ParcelableMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 62
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/amazon/kcp/notifications/ParcelableMetadata;->messageId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 63
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/amazon/kcp/notifications/ParcelableMetadata;->campaignName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/reader/notifications/message/MessageMetadata;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/notifications/ParcelableMetadata;->messageId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/notifications/ParcelableMetadata;->campaignName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCampaignName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/notifications/ParcelableMetadata;->campaignName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/notifications/ParcelableMetadata;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/notifications/ParcelableMetadata;->messageId:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/amazon/kcp/notifications/ParcelableMetadata;->campaignName:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
