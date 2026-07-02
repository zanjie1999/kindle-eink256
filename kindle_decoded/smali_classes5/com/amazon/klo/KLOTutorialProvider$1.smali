.class synthetic Lcom/amazon/klo/KLOTutorialProvider$1;
.super Ljava/lang/Object;
.source "KLOTutorialProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/KLOTutorialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$tutorial$conditions$IConditionEvaluator$ComparisonType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 95
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->values()[Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/klo/KLOTutorialProvider$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$conditions$IConditionEvaluator$ComparisonType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->GREATER_THAN:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
