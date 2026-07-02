.class public final enum Lcom/audible/android/kcp/util/BroadcastSource;
.super Ljava/lang/Enum;
.source "BroadcastSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/util/BroadcastSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/util/BroadcastSource;

.field public static final enum DEREGISTRATION:Lcom/audible/android/kcp/util/BroadcastSource;

.field public static final enum HEADSET_UNPLUGGED:Lcom/audible/android/kcp/util/BroadcastSource;

.field public static final enum MONKEY_TEST:Lcom/audible/android/kcp/util/BroadcastSource;

.field public static final enum NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

.field public static final enum PERSISTENT_PLAYER_LIBRARY:Lcom/audible/android/kcp/util/BroadcastSource;

.field public static final enum UNKNOWN:Lcom/audible/android/kcp/util/BroadcastSource;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Lcom/audible/android/kcp/util/BroadcastSource;

    const/4 v1, 0x0

    const-string v2, "NOTIFICATION_BAR"

    invoke-direct {v0, v2, v1}, Lcom/audible/android/kcp/util/BroadcastSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    new-instance v0, Lcom/audible/android/kcp/util/BroadcastSource;

    const/4 v2, 0x1

    const-string v3, "PERSISTENT_PLAYER_LIBRARY"

    invoke-direct {v0, v3, v2}, Lcom/audible/android/kcp/util/BroadcastSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastSource;->PERSISTENT_PLAYER_LIBRARY:Lcom/audible/android/kcp/util/BroadcastSource;

    new-instance v0, Lcom/audible/android/kcp/util/BroadcastSource;

    const/4 v3, 0x2

    const-string v4, "DEREGISTRATION"

    invoke-direct {v0, v4, v3}, Lcom/audible/android/kcp/util/BroadcastSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastSource;->DEREGISTRATION:Lcom/audible/android/kcp/util/BroadcastSource;

    new-instance v0, Lcom/audible/android/kcp/util/BroadcastSource;

    const/4 v4, 0x3

    const-string v5, "MONKEY_TEST"

    invoke-direct {v0, v5, v4}, Lcom/audible/android/kcp/util/BroadcastSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastSource;->MONKEY_TEST:Lcom/audible/android/kcp/util/BroadcastSource;

    new-instance v0, Lcom/audible/android/kcp/util/BroadcastSource;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Lcom/audible/android/kcp/util/BroadcastSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastSource;->UNKNOWN:Lcom/audible/android/kcp/util/BroadcastSource;

    new-instance v0, Lcom/audible/android/kcp/util/BroadcastSource;

    const/4 v6, 0x5

    const-string v7, "HEADSET_UNPLUGGED"

    invoke-direct {v0, v7, v6}, Lcom/audible/android/kcp/util/BroadcastSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastSource;->HEADSET_UNPLUGGED:Lcom/audible/android/kcp/util/BroadcastSource;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/audible/android/kcp/util/BroadcastSource;

    .line 11
    sget-object v8, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    aput-object v8, v7, v1

    sget-object v1, Lcom/audible/android/kcp/util/BroadcastSource;->PERSISTENT_PLAYER_LIBRARY:Lcom/audible/android/kcp/util/BroadcastSource;

    aput-object v1, v7, v2

    sget-object v1, Lcom/audible/android/kcp/util/BroadcastSource;->DEREGISTRATION:Lcom/audible/android/kcp/util/BroadcastSource;

    aput-object v1, v7, v3

    sget-object v1, Lcom/audible/android/kcp/util/BroadcastSource;->MONKEY_TEST:Lcom/audible/android/kcp/util/BroadcastSource;

    aput-object v1, v7, v4

    sget-object v1, Lcom/audible/android/kcp/util/BroadcastSource;->UNKNOWN:Lcom/audible/android/kcp/util/BroadcastSource;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/audible/android/kcp/util/BroadcastSource;->$VALUES:[Lcom/audible/android/kcp/util/BroadcastSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/util/BroadcastSource;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/util/BroadcastSource;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/util/BroadcastSource;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/android/kcp/util/BroadcastSource;->$VALUES:[Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/util/BroadcastSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/util/BroadcastSource;

    return-object v0
.end method
