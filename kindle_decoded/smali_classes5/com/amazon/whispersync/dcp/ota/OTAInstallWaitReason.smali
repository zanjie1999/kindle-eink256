.class public final enum Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;
.super Ljava/lang/Enum;
.source "OTAInstallWaitReason.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum A2DPOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum AppNotIdle:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CallOrRing:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum FTUEIncomplete:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum LowBatt:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum MTPIsNotIdleLongEnough:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum MusicOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum NeedUserApproval:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum NotEnoughDiskSpace:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum NotEnoughIdleTime:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum NotEnoughScreenOffTime:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum ScreenOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum UMSOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

.field public static final enum Unknown:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;


# instance fields
.field private final mId:I

.field private final mSeverity:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->VisibleInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v2, 0x0

    const-string v3, "LowBatt"

    invoke-direct {v0, v3, v2, v2, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->LowBatt:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->VisibleInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v3, 0x1

    const-string v4, "NotEnoughDiskSpace"

    invoke-direct {v0, v4, v3, v3, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->NotEnoughDiskSpace:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 13
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v4, 0x2

    const-string v5, "MusicOn"

    invoke-direct {v0, v5, v4, v4, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->MusicOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 14
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v5, 0x3

    const-string v6, "A2DPOn"

    invoke-direct {v0, v6, v5, v5, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->A2DPOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 15
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v6, 0x4

    const-string v7, "CallOrRing"

    invoke-direct {v0, v7, v6, v6, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->CallOrRing:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 16
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v7, 0x5

    const-string v8, "ScreenOn"

    invoke-direct {v0, v8, v7, v7, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->ScreenOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 17
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v8, 0x6

    const-string v9, "UMSOn"

    invoke-direct {v0, v9, v8, v8, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->UMSOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 18
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/4 v9, 0x7

    const-string v10, "MTPIsNotIdleLongEnough"

    invoke-direct {v0, v10, v9, v9, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->MTPIsNotIdleLongEnough:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 19
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/16 v10, 0x8

    const-string v11, "AppNotIdle"

    invoke-direct {v0, v11, v10, v10, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->AppNotIdle:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 20
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/16 v11, 0x9

    const-string v12, "NotEnoughScreenOffTime"

    invoke-direct {v0, v12, v11, v11, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->NotEnoughScreenOffTime:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 21
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/16 v12, 0xa

    const-string v13, "NotEnoughIdleTime"

    invoke-direct {v0, v13, v12, v12, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->NotEnoughIdleTime:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 22
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/16 v13, 0xb

    const-string v14, "NeedUserApproval"

    invoke-direct {v0, v14, v13, v13, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->NeedUserApproval:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 23
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->SilentInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/16 v14, 0xc

    const-string v15, "FTUEIncomplete"

    invoke-direct {v0, v15, v14, v14, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->FTUEIncomplete:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 25
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;->VisibleInstallBlocker:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    const/16 v15, 0xd

    const-string v14, "Unknown"

    const v13, 0x7fffffff

    invoke-direct {v0, v14, v15, v13, v1}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->Unknown:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 8
    sget-object v13, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->LowBatt:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v13, v1, v2

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->NotEnoughDiskSpace:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->MusicOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->A2DPOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->CallOrRing:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->ScreenOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->UMSOn:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->MTPIsNotIdleLongEnough:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->AppNotIdle:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v2, v1, v10

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->NotEnoughScreenOffTime:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v2, v1, v11

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->NotEnoughIdleTime:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    aput-object v2, v1, v12

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->NeedUserApproval:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->FTUEIncomplete:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    .line 33
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->mId:I

    .line 54
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->mSeverity:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;
    .locals 5

    .line 59
    invoke-static {}, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->values()[Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 61
    iget v4, v3, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->mId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->Unknown:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSeverity()Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->mSeverity:Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason$Severity;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 84
    iget p2, p0, Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
