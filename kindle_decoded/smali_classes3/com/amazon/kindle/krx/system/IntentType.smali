.class public final enum Lcom/amazon/kindle/krx/system/IntentType;
.super Ljava/lang/Enum;
.source "IntentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/system/IntentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/system/IntentType;

.field public static final enum ACCOUNT_REMOVED:Lcom/amazon/kindle/krx/system/IntentType;

.field public static final enum CONNECTIVITY_CHANGE:Lcom/amazon/kindle/krx/system/IntentType;

.field public static final enum MANUAL_SYNC:Lcom/amazon/kindle/krx/system/IntentType;


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/system/IntentType;

    const/4 v1, 0x0

    const-string v2, "CONNECTIVITY_CHANGE"

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/krx/system/IntentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/system/IntentType;->CONNECTIVITY_CHANGE:Lcom/amazon/kindle/krx/system/IntentType;

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/system/IntentType;

    const/4 v2, 0x1

    const-string v3, "MANUAL_SYNC"

    const-string v4, "com.amazon.intent.SYNC"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/krx/system/IntentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/system/IntentType;->MANUAL_SYNC:Lcom/amazon/kindle/krx/system/IntentType;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/system/IntentType;

    const/4 v3, 0x2

    const-string v4, "ACCOUNT_REMOVED"

    const-string v5, "com.amazon.dcp.sso.action.account.removed"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/krx/system/IntentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/system/IntentType;->ACCOUNT_REMOVED:Lcom/amazon/kindle/krx/system/IntentType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/system/IntentType;

    .line 11
    sget-object v5, Lcom/amazon/kindle/krx/system/IntentType;->CONNECTIVITY_CHANGE:Lcom/amazon/kindle/krx/system/IntentType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/system/IntentType;->MANUAL_SYNC:Lcom/amazon/kindle/krx/system/IntentType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/system/IntentType;->$VALUES:[Lcom/amazon/kindle/krx/system/IntentType;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/amazon/kindle/krx/system/IntentType;->action:Ljava/lang/String;

    return-void
.end method

.method public static getIntentTypeFromAction(Ljava/lang/String;)Lcom/amazon/kindle/krx/system/IntentType;
    .locals 5

    .line 40
    invoke-static {}, Lcom/amazon/kindle/krx/system/IntentType;->values()[Lcom/amazon/kindle/krx/system/IntentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    iget-object v4, v3, Lcom/amazon/kindle/krx/system/IntentType;->action:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/system/IntentType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kindle/krx/system/IntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/system/IntentType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/system/IntentType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kindle/krx/system/IntentType;->$VALUES:[Lcom/amazon/kindle/krx/system/IntentType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/system/IntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/system/IntentType;

    return-object v0
.end method


# virtual methods
.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/krx/system/IntentType;->action:Ljava/lang/String;

    return-object v0
.end method
