.class public final synthetic Lcom/amazon/kindle/setting/item/sync/SyncItemProvider$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->values()[Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_STARTED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
