.class public final enum Lcom/amazon/phl/metrics/Modifier;
.super Ljava/lang/Enum;
.source "InBookMetricsReporter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/phl/metrics/Modifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/phl/metrics/Modifier;

.field public static final enum USER_AA:Lcom/amazon/phl/metrics/Modifier;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/phl/metrics/Modifier;

    new-instance v1, Lcom/amazon/phl/metrics/Modifier;

    const/4 v2, 0x0

    const-string v3, "USER_AA"

    const-string v4, "UserAa"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/phl/metrics/Modifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/phl/metrics/Modifier;->USER_AA:Lcom/amazon/phl/metrics/Modifier;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/phl/metrics/Modifier;

    const-string v2, "NA"

    const/4 v3, 0x1

    .line 15
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/phl/metrics/Modifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/phl/metrics/Modifier;->$VALUES:[Lcom/amazon/phl/metrics/Modifier;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/phl/metrics/Modifier;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/phl/metrics/Modifier;
    .locals 1

    const-class v0, Lcom/amazon/phl/metrics/Modifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/phl/metrics/Modifier;

    return-object p0
.end method

.method public static values()[Lcom/amazon/phl/metrics/Modifier;
    .locals 1

    sget-object v0, Lcom/amazon/phl/metrics/Modifier;->$VALUES:[Lcom/amazon/phl/metrics/Modifier;

    invoke-virtual {v0}, [Lcom/amazon/phl/metrics/Modifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/phl/metrics/Modifier;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/phl/metrics/Modifier;->value:Ljava/lang/String;

    return-object v0
.end method
