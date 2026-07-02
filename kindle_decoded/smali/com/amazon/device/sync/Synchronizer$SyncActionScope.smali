.class public final enum Lcom/amazon/device/sync/Synchronizer$SyncActionScope;
.super Ljava/lang/Enum;
.source "Synchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/Synchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncActionScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/sync/Synchronizer$SyncActionScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

.field public static final enum DATASETS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

.field public static final enum DATASETS_AND_RECORDS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

.field public static final enum RECORDS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

.field public static final enum SUBSCRIPTIONS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 284
    new-instance v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    const/4 v1, 0x0

    const-string v2, "SUBSCRIPTIONS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->SUBSCRIPTIONS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    new-instance v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    const/4 v2, 0x1

    const-string v3, "DATASETS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->DATASETS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    new-instance v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    const/4 v3, 0x2

    const-string v4, "RECORDS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->RECORDS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    new-instance v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    const/4 v4, 0x3

    const-string v5, "DATASETS_AND_RECORDS"

    invoke-direct {v0, v5, v4}, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->DATASETS_AND_RECORDS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    .line 282
    sget-object v6, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->SUBSCRIPTIONS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->DATASETS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->RECORDS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->$VALUES:[Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 282
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/sync/Synchronizer$SyncActionScope;
    .locals 1

    .line 282
    const-class v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/sync/Synchronizer$SyncActionScope;
    .locals 1

    .line 282
    sget-object v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->$VALUES:[Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    invoke-virtual {v0}, [Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    return-object v0
.end method
