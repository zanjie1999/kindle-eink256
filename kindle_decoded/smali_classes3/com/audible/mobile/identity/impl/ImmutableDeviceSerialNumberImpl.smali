.class public final Lcom/audible/mobile/identity/impl/ImmutableDeviceSerialNumberImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableDeviceSerialNumberImpl.java"

# interfaces
.implements Lcom/audible/mobile/identity/DeviceSerialNumber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/identity/DeviceSerialNumber;",
        ">;",
        "Lcom/audible/mobile/identity/DeviceSerialNumber;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/identity/DeviceSerialNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/audible/mobile/identity/impl/ImmutableDeviceSerialNumberImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/identity/impl/ImmutableDeviceSerialNumberImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/identity/impl/ImmutableDeviceSerialNumberImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method
