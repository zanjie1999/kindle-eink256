.class public final enum Lcom/amazon/client/metrics/common/configuration/BatchQueueType;
.super Ljava/lang/Enum;
.source "BatchQueueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/common/configuration/BatchQueueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

.field public static final enum NON_VOLATILE:Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

.field public static final enum SEMI_VOLATILE:Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

.field public static final enum VOLATILE:Lcom/amazon/client/metrics/common/configuration/BatchQueueType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    const/4 v1, 0x0

    const-string v2, "VOLATILE"

    const-string v3, "Volatile"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->VOLATILE:Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    .line 32
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    const/4 v2, 0x1

    const-string v3, "NON_VOLATILE"

    const-string v4, "NonVolatile"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->NON_VOLATILE:Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    .line 42
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    const/4 v3, 0x2

    const-string v4, "SEMI_VOLATILE"

    const-string v5, "SemiVolatile"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->SEMI_VOLATILE:Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    .line 13
    sget-object v5, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->VOLATILE:Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->NON_VOLATILE:Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->$VALUES:[Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

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

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/common/configuration/BatchQueueType;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/common/configuration/BatchQueueType;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->$VALUES:[Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    return-object v0
.end method
