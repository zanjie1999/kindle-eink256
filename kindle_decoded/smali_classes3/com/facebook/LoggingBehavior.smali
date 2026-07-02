.class public final enum Lcom/facebook/LoggingBehavior;
.super Ljava/lang/Enum;
.source "LoggingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/LoggingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/LoggingBehavior;

.field public static final enum APP_EVENTS:Lcom/facebook/LoggingBehavior;

.field public static final enum CACHE:Lcom/facebook/LoggingBehavior;

.field public static final enum DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

.field public static final enum INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

.field public static final enum INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

.field public static final enum REQUESTS:Lcom/facebook/LoggingBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 28
    new-instance v0, Lcom/facebook/LoggingBehavior;

    const/4 v1, 0x0

    const-string v2, "REQUESTS"

    invoke-direct {v0, v2, v1}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 32
    new-instance v0, Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x1

    const-string v3, "INCLUDE_ACCESS_TOKENS"

    invoke-direct {v0, v3, v2}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    .line 36
    new-instance v0, Lcom/facebook/LoggingBehavior;

    const/4 v3, 0x2

    const-string v4, "INCLUDE_RAW_RESPONSES"

    invoke-direct {v0, v4, v3}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    .line 40
    new-instance v0, Lcom/facebook/LoggingBehavior;

    const/4 v4, 0x3

    const-string v5, "CACHE"

    invoke-direct {v0, v5, v4}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 44
    new-instance v0, Lcom/facebook/LoggingBehavior;

    const/4 v5, 0x4

    const-string v6, "APP_EVENTS"

    invoke-direct {v0, v6, v5}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 48
    new-instance v0, Lcom/facebook/LoggingBehavior;

    const/4 v6, 0x5

    const-string v7, "DEVELOPER_ERRORS"

    invoke-direct {v0, v7, v6}, Lcom/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/facebook/LoggingBehavior;

    .line 24
    sget-object v8, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    aput-object v8, v7, v1

    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    aput-object v1, v7, v2

    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    aput-object v1, v7, v3

    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    aput-object v1, v7, v4

    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/facebook/LoggingBehavior;->$VALUES:[Lcom/facebook/LoggingBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/LoggingBehavior;
    .locals 1

    .line 24
    const-class v0, Lcom/facebook/LoggingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/LoggingBehavior;

    return-object p0
.end method

.method public static values()[Lcom/facebook/LoggingBehavior;
    .locals 1

    .line 24
    sget-object v0, Lcom/facebook/LoggingBehavior;->$VALUES:[Lcom/facebook/LoggingBehavior;

    invoke-virtual {v0}, [Lcom/facebook/LoggingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/LoggingBehavior;

    return-object v0
.end method
