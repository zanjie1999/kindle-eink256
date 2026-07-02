.class final enum Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;
.super Ljava/lang/Enum;
.source "SimpleTriggerExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TriggerOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

.field public static final enum EQUAL_TO:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

.field public static final enum GREATER_THAN:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

.field public static final enum LESS_THAN:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    const/4 v1, 0x0

    const-string v2, "GREATER_THAN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->GREATER_THAN:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    new-instance v0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    const/4 v2, 0x1

    const-string v3, "LESS_THAN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->LESS_THAN:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    new-instance v0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    const/4 v3, 0x2

    const-string v4, "EQUAL_TO"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->EQUAL_TO:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    .line 23
    sget-object v5, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->GREATER_THAN:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->LESS_THAN:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->$VALUES:[Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;
    .locals 3

    const-string v0, "<"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->LESS_THAN:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    return-object p0

    :cond_0
    const-string v0, ">"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->GREATER_THAN:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    return-object p0

    :cond_1
    const-string v0, "=="

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    sget-object p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->EQUAL_TO:Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    return-object p0

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->$VALUES:[Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/client/metrics/trigger/SimpleTriggerExpression$TriggerOperator;

    return-object v0
.end method
