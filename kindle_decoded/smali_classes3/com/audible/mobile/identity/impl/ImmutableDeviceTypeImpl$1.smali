.class Lcom/audible/mobile/identity/impl/ImmutableDeviceTypeImpl$1;
.super Ljava/lang/Object;
.source "ImmutableDeviceTypeImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/identity/impl/ImmutableDeviceTypeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/identity/DeviceType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/identity/DeviceType;
    .locals 1

    .line 17
    new-instance v0, Lcom/audible/mobile/identity/impl/ImmutableDeviceTypeImpl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/audible/mobile/identity/impl/ImmutableDeviceTypeImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/audible/mobile/identity/impl/ImmutableDeviceTypeImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/identity/DeviceType;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/identity/DeviceType;
    .locals 0

    .line 23
    new-array p1, p1, [Lcom/audible/mobile/identity/DeviceType;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/audible/mobile/identity/impl/ImmutableDeviceTypeImpl$1;->newArray(I)[Lcom/audible/mobile/identity/DeviceType;

    move-result-object p1

    return-object p1
.end method
