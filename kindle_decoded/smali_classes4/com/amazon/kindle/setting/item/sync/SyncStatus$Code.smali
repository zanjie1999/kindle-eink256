.class public final enum Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;
.super Ljava/lang/Enum;
.source "SyncStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/setting/item/sync/SyncStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

.field public static final enum SYNCING:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

.field public static final enum SYNC_CANCELLED:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

.field public static final enum SYNC_FINISHED_WITH_ERROR:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

.field public static final enum SYNC_SUCCESS:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    new-instance v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    const/4 v2, 0x0

    const-string v3, "NOT_STARTED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    const/4 v2, 0x1

    const-string v3, "SYNCING"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNCING:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    const/4 v2, 0x2

    const-string v3, "SYNC_SUCCESS"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNC_SUCCESS:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    const/4 v2, 0x3

    const-string v3, "SYNC_FINISHED_WITH_ERROR"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNC_FINISHED_WITH_ERROR:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    const/4 v2, 0x4

    const-string v3, "SYNC_CANCELLED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNC_CANCELLED:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->$VALUES:[Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;
    .locals 1

    const-class v0, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->$VALUES:[Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    invoke-virtual {v0}, [Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    return-object v0
.end method
