.class public final enum Lcom/amazon/dcp/ota/OTAInstallWaitReason;
.super Ljava/lang/Enum;
.source "OTAInstallWaitReason.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/dcp/ota/OTAInstallWaitReason;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum A2DPOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum AppNotIdle:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/dcp/ota/OTAInstallWaitReason;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CallOrRing:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum LowBatt:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum MTPIsNotIdleLongEnough:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum MusicOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum NotEnoughDiskSpace:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum NotEnoughIdleTime:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum NotEnoughScreenOffTime:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum ScreenOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum UMSOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

.field public static final enum Unknown:Lcom/amazon/dcp/ota/OTAInstallWaitReason;


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 11
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/4 v1, 0x0

    const-string v2, "LowBatt"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->LowBatt:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 12
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/4 v2, 0x1

    const-string v3, "NotEnoughDiskSpace"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->NotEnoughDiskSpace:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 15
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/4 v3, 0x2

    const-string v4, "MusicOn"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->MusicOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 16
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/4 v4, 0x3

    const-string v5, "A2DPOn"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->A2DPOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 17
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/4 v5, 0x4

    const-string v6, "CallOrRing"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->CallOrRing:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 18
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/4 v6, 0x5

    const-string v7, "ScreenOn"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->ScreenOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 19
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/4 v7, 0x6

    const-string v8, "UMSOn"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->UMSOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 20
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/4 v8, 0x7

    const-string v9, "MTPIsNotIdleLongEnough"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->MTPIsNotIdleLongEnough:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 21
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/16 v9, 0x8

    const-string v10, "AppNotIdle"

    invoke-direct {v0, v10, v9, v9}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->AppNotIdle:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 22
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/16 v10, 0x9

    const-string v11, "NotEnoughScreenOffTime"

    invoke-direct {v0, v11, v10, v10}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->NotEnoughScreenOffTime:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 23
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/16 v11, 0xa

    const-string v12, "NotEnoughIdleTime"

    invoke-direct {v0, v12, v11, v11}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->NotEnoughIdleTime:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 26
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/16 v12, 0xb

    const-string v13, "Unknown"

    const v14, 0x7fffffff

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->Unknown:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 8
    sget-object v14, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->LowBatt:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->NotEnoughDiskSpace:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->MusicOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->A2DPOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->CallOrRing:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->ScreenOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->UMSOn:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->MTPIsNotIdleLongEnough:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->AppNotIdle:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->NotEnoughScreenOffTime:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->NotEnoughIdleTime:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->$VALUES:[Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    .line 28
    new-instance v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason$1;

    invoke-direct {v0}, Lcom/amazon/dcp/ota/OTAInstallWaitReason$1;-><init>()V

    sput-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->mId:I

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/dcp/ota/OTAInstallWaitReason;
    .locals 5

    .line 52
    invoke-static {}, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->values()[Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 54
    iget v4, v3, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->mId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    sget-object p0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->Unknown:Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/dcp/ota/OTAInstallWaitReason;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/dcp/ota/OTAInstallWaitReason;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->$VALUES:[Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    invoke-virtual {v0}, [Lcom/amazon/dcp/ota/OTAInstallWaitReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/dcp/ota/OTAInstallWaitReason;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 72
    iget p2, p0, Lcom/amazon/dcp/ota/OTAInstallWaitReason;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
