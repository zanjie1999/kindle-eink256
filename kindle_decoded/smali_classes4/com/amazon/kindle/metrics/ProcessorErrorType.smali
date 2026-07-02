.class public final enum Lcom/amazon/kindle/metrics/ProcessorErrorType;
.super Ljava/lang/Enum;
.source "ArdmTaskProcessorErrorReporter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/metrics/ProcessorErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/metrics/ProcessorErrorType;

.field public static final enum TASK_NULL:Lcom/amazon/kindle/metrics/ProcessorErrorType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/metrics/ProcessorErrorType;

    new-instance v1, Lcom/amazon/kindle/metrics/ProcessorErrorType;

    const/4 v2, 0x0

    const-string v3, "TASK_NULL"

    const-string v4, "executeNullTask"

    .line 5
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/metrics/ProcessorErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/metrics/ProcessorErrorType;->TASK_NULL:Lcom/amazon/kindle/metrics/ProcessorErrorType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/metrics/ProcessorErrorType;->$VALUES:[Lcom/amazon/kindle/metrics/ProcessorErrorType;

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

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/metrics/ProcessorErrorType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/metrics/ProcessorErrorType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/metrics/ProcessorErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/metrics/ProcessorErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/metrics/ProcessorErrorType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/metrics/ProcessorErrorType;->$VALUES:[Lcom/amazon/kindle/metrics/ProcessorErrorType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/metrics/ProcessorErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/metrics/ProcessorErrorType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amazon/kindle/metrics/ProcessorErrorType;->value:Ljava/lang/String;

    return-object v0
.end method
