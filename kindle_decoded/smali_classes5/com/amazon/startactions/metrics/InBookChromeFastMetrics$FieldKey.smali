.class final enum Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;
.super Ljava/lang/Enum;
.source "InBookChromeFastMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FieldKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum ACTION:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum CONTEXT:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    const/4 v1, 0x0

    const-string v2, "CONTEXT"

    const-string v3, "context"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->CONTEXT:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    .line 19
    new-instance v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    const/4 v2, 0x1

    const-string v3, "ACTION"

    const-string v4, "action"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->ACTION:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    .line 16
    sget-object v4, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->CONTEXT:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->$VALUES:[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->$VALUES:[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {v0}, [Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$FieldKey;

    return-object v0
.end method
