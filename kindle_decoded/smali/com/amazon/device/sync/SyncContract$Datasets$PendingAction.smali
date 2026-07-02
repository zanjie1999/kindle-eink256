.class public final enum Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;
.super Ljava/lang/Enum;
.source "SyncContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncContract$Datasets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PendingAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

.field public static final enum CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

.field public static final enum DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

.field public static final enum NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 92
    new-instance v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 v1, 0x0

    const-string v2, "CREATION"

    const-string v3, "creation"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    .line 93
    new-instance v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 v2, 0x1

    const-string v3, "DELETION"

    const-string v4, "deletion"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    .line 94
    new-instance v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 v3, 0x2

    const-string v4, "NONE"

    const-string/jumbo v5, "none"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    .line 90
    sget-object v5, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->$VALUES:[Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-object p3, p0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;
    .locals 1

    .line 90
    const-class v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;
    .locals 1

    .line 90
    sget-object v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->$VALUES:[Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v0}, [Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->mValue:Ljava/lang/String;

    return-object v0
.end method
