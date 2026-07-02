.class public final enum Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;
.super Ljava/lang/Enum;
.source "BleAdvertiser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

.field public static final enum ADVERTISE_FAILED_ALREADY_STARTED:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

.field public static final enum ADVERTISE_FAILED_DATA_TOO_LARGE:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

.field public static final enum ADVERTISE_FAILED_FEATURE_UNSUPPORTED:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

.field public static final enum ADVERTISE_FAILED_INTERNAL_ERROR:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

.field public static final enum ADVERTISE_FAILED_TOO_MANY_ADVERTISERS:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SUCCESS:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;


# instance fields
.field private mString:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    const-string v3, "Success"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->SUCCESS:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    .line 38
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "ADVERTISE_FAILED_ALREADY_STARTED"

    const-string v5, "Advertise failed, already started"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_ALREADY_STARTED:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    .line 39
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    const/4 v4, 0x2

    const-string v5, "ADVERTISE_FAILED_DATA_TOO_LARGE"

    const-string v6, "Advertise failed, data too large"

    invoke-direct {v0, v5, v4, v3, v6}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_DATA_TOO_LARGE:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    .line 40
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    const/4 v5, 0x5

    const-string v6, "ADVERTISE_FAILED_FEATURE_UNSUPPORTED"

    const-string v7, "Advertise failed, feature unsupported"

    invoke-direct {v0, v6, v2, v5, v7}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_FEATURE_UNSUPPORTED:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    .line 41
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    const/4 v6, 0x4

    const-string v7, "ADVERTISE_FAILED_INTERNAL_ERROR"

    const-string v8, "Advertise failed, internal error"

    invoke-direct {v0, v7, v6, v6, v8}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_INTERNAL_ERROR:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    .line 42
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    const-string v7, "ADVERTISE_FAILED_TOO_MANY_ADVERTISERS"

    const-string v8, "Advertise failed, too many advertisers"

    invoke-direct {v0, v7, v5, v4, v8}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_TOO_MANY_ADVERTISERS:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    .line 36
    sget-object v8, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->SUCCESS:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_ALREADY_STARTED:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_DATA_TOO_LARGE:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_FEATURE_UNSUPPORTED:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_INTERNAL_ERROR:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    aput-object v1, v7, v6

    aput-object v0, v7, v5

    sput-object v7, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->$VALUES:[Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    .line 107
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State$1;

    invoke-direct {v0}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->mValue:I

    .line 71
    iput-object p4, p0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->mString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(I)Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->fromInt(I)Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    move-result-object p0

    return-object p0
.end method

.method private static fromInt(I)Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 54
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_FEATURE_UNSUPPORTED:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    return-object p0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown BleAdvertiser.State encountered."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_1
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_INTERNAL_ERROR:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    return-object p0

    .line 52
    :cond_2
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_ALREADY_STARTED:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    return-object p0

    .line 56
    :cond_3
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_TOO_MANY_ADVERTISERS:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    return-object p0

    .line 53
    :cond_4
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->ADVERTISE_FAILED_DATA_TOO_LARGE:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    return-object p0

    .line 51
    :cond_5
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->SUCCESS:Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->$VALUES:[Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    invoke-virtual {v0}, [Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleAdvertiser$State;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
