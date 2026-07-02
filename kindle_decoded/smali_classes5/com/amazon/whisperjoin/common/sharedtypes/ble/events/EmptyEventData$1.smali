.class final Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData$1;
.super Ljava/lang/Object;
.source "EmptyEventData.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;
    .locals 0

    .line 26
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;-><init>()V

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;
    .locals 0

    .line 22
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;
    .locals 0

    .line 30
    new-array p1, p1, [Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData$1;->newArray(I)[Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;

    move-result-object p1

    return-object p1
.end method
