.class public final enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
.super Ljava/lang/Enum;
.source "StrictModeViolation.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum CleartextNetworkViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum ContentUriWithoutPermissionViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum CredentialProtectedWhileLockedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum CustomViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum ExplicitGcViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum FileUriExposedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum ImplicitDirectBootViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum IncorrectContextUseViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum InstanceCountViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum IntentReceiverLeakedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum NetworkViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum NonSdkApiUsedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum ResourceMismatchViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum ServiceConnectionLeakedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum SqliteObjectLeakedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum UnbufferedIoViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

.field public static final enum UntaggedSocketViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/4 v2, 0x0

    const-string v3, "CleartextNetworkViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->CleartextNetworkViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/4 v2, 0x1

    const-string v3, "ContentUriWithoutPermissionViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->ContentUriWithoutPermissionViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/4 v2, 0x2

    const-string v3, "CredentialProtectedWhileLockedViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->CredentialProtectedWhileLockedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/4 v2, 0x3

    const-string v3, "CustomViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->CustomViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/4 v2, 0x4

    const-string v3, "DiskReadViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/4 v2, 0x5

    const-string v3, "DiskWriteViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/4 v2, 0x6

    const-string v3, "ExplicitGcViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->ExplicitGcViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/4 v2, 0x7

    const-string v3, "FileUriExposedViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->FileUriExposedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0x8

    const-string v3, "ImplicitDirectBootViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->ImplicitDirectBootViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0x9

    const-string v3, "IncorrectContextUseViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->IncorrectContextUseViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0xa

    const-string v3, "InstanceCountViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->InstanceCountViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0xb

    const-string v3, "IntentReceiverLeakedViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->IntentReceiverLeakedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0xc

    const-string v3, "LeakedClosableViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0xd

    const-string v3, "NetworkViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->NetworkViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0xe

    const-string v3, "NonSdkApiUsedViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->NonSdkApiUsedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0xf

    const-string v3, "ResourceMismatchViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->ResourceMismatchViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0x10

    const-string v3, "ServiceConnectionLeakedViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->ServiceConnectionLeakedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0x11

    const-string v3, "SqliteObjectLeakedViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->SqliteObjectLeakedViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0x12

    const-string v3, "UnbufferedIoViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->UnbufferedIoViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    const/16 v2, 0x13

    const-string v3, "UntaggedSocketViolation"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->UntaggedSocketViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->$VALUES:[Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
    .locals 1

    const-class v0, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->$VALUES:[Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;

    return-object v0
.end method
