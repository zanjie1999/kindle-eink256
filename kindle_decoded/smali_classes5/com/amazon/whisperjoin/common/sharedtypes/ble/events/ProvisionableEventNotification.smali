.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;
.super Ljava/lang/Object;
.source "ProvisionableEventNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEventKey:I

.field private final mEventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventKey:I

    .line 15
    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventKey:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 86
    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;

    .line 90
    iget v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventKey:I

    iget v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventKey:I

    if-eq v2, v3, :cond_2

    return v1

    .line 91
    :cond_2
    iget v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventType:I

    iget p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventType:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getEventKey()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventKey:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 97
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventKey:I

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventType:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisioningEventNotification [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventType:I

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

    .line 50
    iget p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventKey:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;->mEventType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
