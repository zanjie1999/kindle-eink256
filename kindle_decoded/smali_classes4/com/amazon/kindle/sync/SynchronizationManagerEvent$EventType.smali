.class public final enum Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;
.super Ljava/lang/Enum;
.source "SynchronizationManagerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/sync/SynchronizationManagerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

.field public static final enum SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

.field public static final enum SYNC_STARTED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "SYNC_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_STARTED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    .line 14
    new-instance v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "SYNC_FINISHED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    .line 12
    sget-object v4, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_STARTED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->$VALUES:[Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->$VALUES:[Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    return-object v0
.end method
