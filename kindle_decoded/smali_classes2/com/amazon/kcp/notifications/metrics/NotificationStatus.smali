.class public final enum Lcom/amazon/kcp/notifications/metrics/NotificationStatus;
.super Ljava/lang/Enum;
.source "NotificationStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/notifications/metrics/NotificationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

.field public static final enum DEDUPED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

.field public static final enum DISPLAYED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

.field public static final enum PERMANENT_FAILURE:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

.field public static final enum SILENTLY_EXECUTED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

.field public static final enum VALIDITY_FAILED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    const/4 v1, 0x0

    const-string v2, "DISPLAYED"

    const-string v3, "displayed"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->DISPLAYED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    .line 9
    new-instance v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    const/4 v2, 0x1

    const-string v3, "DEDUPED"

    const-string v4, "deduped"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->DEDUPED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    .line 10
    new-instance v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    const/4 v3, 0x2

    const-string v4, "SILENTLY_EXECUTED"

    const-string v5, "silentlyExecuted"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->SILENTLY_EXECUTED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    .line 11
    new-instance v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    const/4 v4, 0x3

    const-string v5, "VALIDITY_FAILED"

    const-string/jumbo v6, "validityFailed"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->VALIDITY_FAILED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    .line 12
    new-instance v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    const/4 v5, 0x4

    const-string v6, "PERMANENT_FAILURE"

    const-string v7, "permanentFailure"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->PERMANENT_FAILURE:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    .line 6
    sget-object v7, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->DISPLAYED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->DEDUPED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->SILENTLY_EXECUTED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->VALIDITY_FAILED:Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->$VALUES:[Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/notifications/metrics/NotificationStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/notifications/metrics/NotificationStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->$VALUES:[Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    invoke-virtual {v0}, [Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/notifications/metrics/NotificationStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/notifications/metrics/NotificationStatus;->key:Ljava/lang/String;

    return-object v0
.end method
