.class public final enum Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;
.super Ljava/lang/Enum;
.source "InBookAaMenuFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

.field public static final enum IS_SNAPSHOT:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

.field public static final enum MODIFIER:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

.field public static final enum NEW_VALUE:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

.field public static final enum PRE_VALUE:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

.field public static final enum SETTING:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    new-instance v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    const/4 v2, 0x0

    const-string v3, "SETTING"

    const-string/jumbo v4, "setting"

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->SETTING:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    const/4 v2, 0x1

    const-string v3, "PRE_VALUE"

    const-string/jumbo v4, "prev_value"

    .line 20
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->PRE_VALUE:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    const/4 v2, 0x2

    const-string v3, "NEW_VALUE"

    const-string v4, "new_value"

    .line 21
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->NEW_VALUE:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    const/4 v2, 0x3

    const-string v3, "MODIFIER"

    const-string v4, "modifier"

    .line 22
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->MODIFIER:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    const/4 v2, 0x4

    const-string v3, "IS_SNAPSHOT"

    const-string v4, "is_snapshot"

    .line 23
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->IS_SNAPSHOT:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->$VALUES:[Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;
    .locals 1

    const-class v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;
    .locals 1

    sget-object v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->$VALUES:[Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    invoke-virtual {v0}, [Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$FieldKey;->value:Ljava/lang/String;

    return-object v0
.end method
