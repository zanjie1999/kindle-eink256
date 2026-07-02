.class public final enum Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;
.super Ljava/lang/Enum;
.source "PullReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

.field public static final enum PullReasonManualSync:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

.field public static final enum PullReasonNetworkStartup:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

.field public static final enum PullReasonPoll:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

.field public static final enum PullReasonRedirected:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

.field public static final enum PullReasonScheduled:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

.field public static final enum PullReasonTPH:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    const/4 v1, 0x0

    const-string v2, "PullReasonManualSync"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonManualSync:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    const/4 v2, 0x1

    const-string v3, "PullReasonNetworkStartup"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonNetworkStartup:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    const/4 v3, 0x2

    const-string v4, "PullReasonPoll"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonPoll:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    const/4 v4, 0x3

    const-string v5, "PullReasonScheduled"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonScheduled:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    const/4 v5, 0x4

    const-string v6, "PullReasonTPH"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonTPH:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    const/4 v6, 0x5

    const-string v7, "PullReasonRedirected"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonRedirected:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    .line 4
    sget-object v8, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonManualSync:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonNetworkStartup:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonPoll:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonScheduled:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->PullReasonTPH:Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Todo/PullReason;

    return-object v0
.end method
