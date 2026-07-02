.class public final enum Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;
.super Ljava/lang/Enum;
.source "NotificationTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

.field public static final enum BACKGROUND_TODO_SYNC_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

.field public static final enum DEFAULT_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

.field public static final enum ICS_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

.field public static final enum NEW_CHANNEL_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;


# instance fields
.field private final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    const/4 v1, 0x0

    const-string v2, "NEW_CHANNEL_NOTIFICATION"

    const-string v3, "NEW_CHANNEL"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->NEW_CHANNEL_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    .line 11
    new-instance v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    const/4 v2, 0x1

    const-string v3, "ICS_NOTIFICATION"

    const-string v4, "ICS"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->ICS_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    .line 14
    new-instance v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    const/4 v3, 0x2

    const-string v4, "BACKGROUND_TODO_SYNC_NOTIFICATION"

    const-string v5, "BACKGROUND_TODO_SYNC"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->BACKGROUND_TODO_SYNC_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    .line 17
    new-instance v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    const/4 v4, 0x3

    const-string v5, "DEFAULT_NOTIFICATION"

    const-string v6, "DEFAULT"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->DEFAULT_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    .line 6
    sget-object v6, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->NEW_CHANNEL_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->ICS_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->BACKGROUND_TODO_SYNC_NOTIFICATION:Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->$VALUES:[Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->identifier:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->$VALUES:[Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    invoke-virtual {v0}, [Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/notifications/handlers/NotificationTypeEnum;->identifier:Ljava/lang/String;

    return-object v0
.end method
