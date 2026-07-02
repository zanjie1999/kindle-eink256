.class final Lcom/amazon/whisperbridge/ble/BleAdvertiser$State$1;
.super Ljava/lang/Object;
.source "BleAdvertiser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;
    .locals 0

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->access$000(I)Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;
    .locals 0

    .line 115
    new-array p1, p1, [Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State$1;->newArray(I)[Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    move-result-object p1

    return-object p1
.end method
