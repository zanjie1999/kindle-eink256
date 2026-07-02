.class final Lcom/amazon/dcp/ota/OTAInstallWaitReason$1;
.super Ljava/lang/Object;
.source "OTAInstallWaitReason.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/ota/OTAInstallWaitReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/dcp/ota/OTAInstallWaitReason;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/OTAInstallWaitReason;
    .locals 0

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->fromValue(I)Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/amazon/dcp/ota/OTAInstallWaitReason$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/dcp/ota/OTAInstallWaitReason;
    .locals 0

    .line 39
    new-array p1, p1, [Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/amazon/dcp/ota/OTAInstallWaitReason$1;->newArray(I)[Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    move-result-object p1

    return-object p1
.end method
