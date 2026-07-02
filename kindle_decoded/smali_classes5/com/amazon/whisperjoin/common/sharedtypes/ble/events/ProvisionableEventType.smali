.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;
.super Ljava/lang/Object;
.source "ProvisionableEventType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT_KEY_KEY:Ljava/lang/String; = "ek"

.field private static final EVENT_UUID_KEY:Ljava/lang/String; = "eu"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEventType:I

.field private final mEventUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->mEventUuid:Ljava/util/UUID;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->mEventType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->mEventUuid:Ljava/util/UUID;

    .line 24
    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->mEventType:I

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "uuid cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->mEventType:I

    return v0
.end method

.method public getEventUuid()Ljava/util/UUID;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->mEventUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisionableEventType [uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->mEventUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 59
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->mEventUuid:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventType;->mEventType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
