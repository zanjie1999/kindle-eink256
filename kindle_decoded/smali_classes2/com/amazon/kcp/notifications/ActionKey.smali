.class public final enum Lcom/amazon/kcp/notifications/ActionKey;
.super Ljava/lang/Enum;
.source "ActionKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/notifications/ActionKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/notifications/ActionKey;

.field public static final enum ACTION_DATA:Lcom/amazon/kcp/notifications/ActionKey;

.field public static final enum ACTION_NAME:Lcom/amazon/kcp/notifications/ActionKey;

.field public static final enum ACTION_REFTAG:Lcom/amazon/kcp/notifications/ActionKey;

.field public static final enum ACTION_SOURCE:Lcom/amazon/kcp/notifications/ActionKey;

.field public static final enum CAMPAIGN_NAME:Lcom/amazon/kcp/notifications/ActionKey;

.field public static final enum FIRST_BUTTON_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

.field public static final enum MESSAGE_ID:Lcom/amazon/kcp/notifications/ActionKey;

.field public static final enum MESSAGE_METADATA_KEY:Lcom/amazon/kcp/notifications/ActionKey;

.field public static final enum SECOND_BUTTON_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

.field public static final enum TAP_ACTION:Lcom/amazon/kcp/notifications/ActionKey;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 9
    new-instance v0, Lcom/amazon/kcp/notifications/ActionKey;

    const/4 v1, 0x0

    const-string v2, "ACTION_NAME"

    const-string v3, "actionName"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/notifications/ActionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_NAME:Lcom/amazon/kcp/notifications/ActionKey;

    .line 11
    new-instance v0, Lcom/amazon/kcp/notifications/ActionKey;

    const/4 v2, 0x1

    const-string v3, "ACTION_REFTAG"

    const-string v4, "actionRefTag"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/notifications/ActionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_REFTAG:Lcom/amazon/kcp/notifications/ActionKey;

    .line 13
    new-instance v0, Lcom/amazon/kcp/notifications/ActionKey;

    const/4 v3, 0x2

    const-string v4, "ACTION_DATA"

    const-string v5, "actionData"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/notifications/ActionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_DATA:Lcom/amazon/kcp/notifications/ActionKey;

    .line 15
    new-instance v0, Lcom/amazon/kcp/notifications/ActionKey;

    const/4 v4, 0x3

    const-string v5, "ACTION_SOURCE"

    const-string v6, "actionSource"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/notifications/ActionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_SOURCE:Lcom/amazon/kcp/notifications/ActionKey;

    .line 17
    new-instance v0, Lcom/amazon/kcp/notifications/ActionKey;

    const/4 v5, 0x4

    const-string v6, "CAMPAIGN_NAME"

    const-string v7, "campaignName"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/notifications/ActionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/ActionKey;->CAMPAIGN_NAME:Lcom/amazon/kcp/notifications/ActionKey;

    .line 19
    new-instance v0, Lcom/amazon/kcp/notifications/ActionKey;

    const/4 v6, 0x5

    const-string v7, "MESSAGE_ID"

    const-string v8, "messageId"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kcp/notifications/ActionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/ActionKey;->MESSAGE_ID:Lcom/amazon/kcp/notifications/ActionKey;

    .line 21
    new-instance v0, Lcom/amazon/kcp/notifications/ActionKey;

    const/4 v7, 0x6

    const-string v8, "MESSAGE_METADATA_KEY"

    const-string v9, "metadata"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kcp/notifications/ActionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/ActionKey;->MESSAGE_METADATA_KEY:Lcom/amazon/kcp/notifications/ActionKey;

    .line 23
    new-instance v0, Lcom/amazon/kcp/notifications/ActionKey;

    const/4 v8, 0x7

    const-string v9, "TAP_ACTION"

    const-string v10, "tapAction"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kcp/notifications/ActionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/ActionKey;->TAP_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    .line 25
    new-instance v0, Lcom/amazon/kcp/notifications/ActionKey;

    const/16 v9, 0x8

    const-string v10, "FIRST_BUTTON_ACTION"

    const-string v11, "firstButton"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/kcp/notifications/ActionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/ActionKey;->FIRST_BUTTON_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    .line 27
    new-instance v0, Lcom/amazon/kcp/notifications/ActionKey;

    const/16 v10, 0x9

    const-string v11, "SECOND_BUTTON_ACTION"

    const-string v12, "secondButton"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kcp/notifications/ActionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/notifications/ActionKey;->SECOND_BUTTON_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/kcp/notifications/ActionKey;

    .line 6
    sget-object v12, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_NAME:Lcom/amazon/kcp/notifications/ActionKey;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_REFTAG:Lcom/amazon/kcp/notifications/ActionKey;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_DATA:Lcom/amazon/kcp/notifications/ActionKey;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_SOURCE:Lcom/amazon/kcp/notifications/ActionKey;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/kcp/notifications/ActionKey;->CAMPAIGN_NAME:Lcom/amazon/kcp/notifications/ActionKey;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/kcp/notifications/ActionKey;->MESSAGE_ID:Lcom/amazon/kcp/notifications/ActionKey;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/kcp/notifications/ActionKey;->MESSAGE_METADATA_KEY:Lcom/amazon/kcp/notifications/ActionKey;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/kcp/notifications/ActionKey;->TAP_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/kcp/notifications/ActionKey;->FIRST_BUTTON_ACTION:Lcom/amazon/kcp/notifications/ActionKey;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/kcp/notifications/ActionKey;->$VALUES:[Lcom/amazon/kcp/notifications/ActionKey;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/amazon/kcp/notifications/ActionKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/notifications/ActionKey;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kcp/notifications/ActionKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/notifications/ActionKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/notifications/ActionKey;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kcp/notifications/ActionKey;->$VALUES:[Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v0}, [Lcom/amazon/kcp/notifications/ActionKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/notifications/ActionKey;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/notifications/ActionKey;->key:Ljava/lang/String;

    return-object v0
.end method
