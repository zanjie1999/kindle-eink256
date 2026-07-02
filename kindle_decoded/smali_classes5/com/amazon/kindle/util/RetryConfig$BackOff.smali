.class public final enum Lcom/amazon/kindle/util/RetryConfig$BackOff;
.super Ljava/lang/Enum;
.source "Retry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/util/RetryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackOff"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/util/RetryConfig$BackOff;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/util/RetryConfig$BackOff;

.field public static final enum EXPONENTIAL:Lcom/amazon/kindle/util/RetryConfig$BackOff;

.field public static final enum MULTIPLICATIVE:Lcom/amazon/kindle/util/RetryConfig$BackOff;

.field public static final enum NONE:Lcom/amazon/kindle/util/RetryConfig$BackOff;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/util/RetryConfig$BackOff;

    new-instance v1, Lcom/amazon/kindle/util/RetryConfig$BackOff;

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/util/RetryConfig$BackOff;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/util/RetryConfig$BackOff;->NONE:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/util/RetryConfig$BackOff;

    const/4 v2, 0x1

    const-string v3, "MULTIPLICATIVE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/util/RetryConfig$BackOff;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/util/RetryConfig$BackOff;->MULTIPLICATIVE:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/util/RetryConfig$BackOff;

    const/4 v2, 0x2

    const-string v3, "EXPONENTIAL"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/util/RetryConfig$BackOff;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/util/RetryConfig$BackOff;->EXPONENTIAL:Lcom/amazon/kindle/util/RetryConfig$BackOff;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/util/RetryConfig$BackOff;->$VALUES:[Lcom/amazon/kindle/util/RetryConfig$BackOff;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/util/RetryConfig$BackOff;
    .locals 1

    const-class v0, Lcom/amazon/kindle/util/RetryConfig$BackOff;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/util/RetryConfig$BackOff;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/util/RetryConfig$BackOff;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/util/RetryConfig$BackOff;->$VALUES:[Lcom/amazon/kindle/util/RetryConfig$BackOff;

    invoke-virtual {v0}, [Lcom/amazon/kindle/util/RetryConfig$BackOff;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/util/RetryConfig$BackOff;

    return-object v0
.end method
