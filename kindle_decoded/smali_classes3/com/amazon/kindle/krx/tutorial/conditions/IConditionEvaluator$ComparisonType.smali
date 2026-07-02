.class public final enum Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;
.super Ljava/lang/Enum;
.source "IConditionEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComparisonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

.field public static final enum EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

.field public static final enum GREATER_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

.field public static final enum GREATER_THAN_OR_EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

.field public static final enum LESS_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

.field public static final enum LESS_THAN_OR_EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

.field public static final enum NOT_EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    const/4 v1, 0x0

    const-string v2, "LESS_THAN"

    const-string v3, "lessThan"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->LESS_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    .line 24
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    const/4 v2, 0x1

    const-string v3, "LESS_THAN_OR_EQUAL"

    const-string v4, "lessThanOrEqual"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->LESS_THAN_OR_EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    .line 25
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    const/4 v3, 0x2

    const-string v4, "EQUAL"

    const-string v5, "equal"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    const/4 v4, 0x3

    const-string v5, "GREATER_THAN_OR_EQUAL"

    const-string v6, "greaterThanOrEqual"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN_OR_EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    .line 27
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    const/4 v5, 0x4

    const-string v6, "GREATER_THAN"

    const-string v7, "greaterThan"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    .line 28
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    const/4 v6, 0x5

    const-string v7, "NOT_EQUAL"

    const-string v8, "notEqual"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->NOT_EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    .line 21
    sget-object v8, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->LESS_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->LESS_THAN_OR_EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN_OR_EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getComparisonType(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;
    .locals 5

    .line 49
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->values()[Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 51
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    sget-object p0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->value:Ljava/lang/String;

    return-object v0
.end method
