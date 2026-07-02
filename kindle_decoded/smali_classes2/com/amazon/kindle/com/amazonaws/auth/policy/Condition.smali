.class public Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# instance fields
.field protected conditionKey:Ljava/lang/String;

.field protected type:Ljava/lang/String;

.field protected values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConditionKey()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Condition;->values:Ljava/util/List;

    return-object v0
.end method
