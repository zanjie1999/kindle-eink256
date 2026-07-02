.class public final enum Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;
.super Ljava/lang/Enum;
.source "EnvironmentStage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

.field public static final enum BETA:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

.field public static final enum GAMMA:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

.field public static final enum PROD:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;


# instance fields
.field private final environmentStage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    const/4 v1, 0x0

    const-string v2, "BETA"

    const-string v3, "beta"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->BETA:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    .line 20
    new-instance v0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    const/4 v2, 0x1

    const-string v3, "GAMMA"

    const-string v4, "master"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->GAMMA:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    .line 22
    new-instance v0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    const/4 v3, 0x2

    const-string v4, "PROD"

    const-string/jumbo v5, "prod"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->PROD:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    .line 15
    sget-object v5, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->BETA:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->GAMMA:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->$VALUES:[Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->environmentStage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    return-object p0
.end method

.method public static values()[Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->$VALUES:[Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    invoke-virtual {v0}, [Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->environmentStage:Ljava/lang/String;

    return-object v0
.end method
