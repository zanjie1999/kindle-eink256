.class public final enum Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;
.super Ljava/lang/Enum;
.source "BatchQueueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

.field public static final enum NON_VOLATILE:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

.field public static final enum VOLATILE:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    const/4 v1, 0x0

    const-string v2, "VOLATILE"

    const-string v3, "Volatile"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->VOLATILE:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    const/4 v2, 0x1

    const-string v3, "NON_VOLATILE"

    const-string v4, "NonVolatile"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->NON_VOLATILE:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    .line 6
    sget-object v4, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->VOLATILE:Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->$VALUES:[Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->values()[Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 24
    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid BatchQueueType"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->$VALUES:[Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;->mName:Ljava/lang/String;

    return-object v0
.end method
