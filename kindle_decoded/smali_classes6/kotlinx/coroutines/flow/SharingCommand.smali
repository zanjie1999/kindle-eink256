.class public final enum Lkotlinx/coroutines/flow/SharingCommand;
.super Ljava/lang/Enum;
.source "SharingStarted.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/flow/SharingCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/flow/SharingCommand;

.field public static final enum START:Lkotlinx/coroutines/flow/SharingCommand;

.field public static final enum STOP:Lkotlinx/coroutines/flow/SharingCommand;

.field public static final enum STOP_AND_RESET_REPLAY_CACHE:Lkotlinx/coroutines/flow/SharingCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/coroutines/flow/SharingCommand;

    new-instance v1, Lkotlinx/coroutines/flow/SharingCommand;

    const/4 v2, 0x0

    const-string v3, "START"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/flow/SharingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/flow/SharingCommand;->START:Lkotlinx/coroutines/flow/SharingCommand;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/coroutines/flow/SharingCommand;

    const/4 v2, 0x1

    const-string v3, "STOP"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/flow/SharingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/flow/SharingCommand;->STOP:Lkotlinx/coroutines/flow/SharingCommand;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/coroutines/flow/SharingCommand;

    const/4 v2, 0x2

    const-string v3, "STOP_AND_RESET_REPLAY_CACHE"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/flow/SharingCommand;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/flow/SharingCommand;->STOP_AND_RESET_REPLAY_CACHE:Lkotlinx/coroutines/flow/SharingCommand;

    aput-object v1, v0, v2

    sput-object v0, Lkotlinx/coroutines/flow/SharingCommand;->$VALUES:[Lkotlinx/coroutines/flow/SharingCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/flow/SharingCommand;
    .locals 1

    const-class v0, Lkotlinx/coroutines/flow/SharingCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/SharingCommand;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/flow/SharingCommand;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/SharingCommand;->$VALUES:[Lkotlinx/coroutines/flow/SharingCommand;

    invoke-virtual {v0}, [Lkotlinx/coroutines/flow/SharingCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/flow/SharingCommand;

    return-object v0
.end method
