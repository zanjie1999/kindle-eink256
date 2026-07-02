.class public final enum Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;
.super Ljava/lang/Enum;
.source "InBookAaMenuFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Modifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

.field public static final enum USER_AA:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    new-instance v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    const/4 v2, 0x0

    const-string v3, "USER_AA"

    const-string v4, "UserAa"

    .line 27
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;->USER_AA:Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    const/4 v2, 0x1

    const-string v3, "USER_OTHER"

    const-string v4, "UserOther"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    const-string v2, "KSDK"

    const/4 v3, 0x2

    .line 29
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    const-string v2, "NA"

    const/4 v3, 0x3

    .line 30
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;->$VALUES:[Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;
    .locals 1

    const-class v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;
    .locals 1

    sget-object v0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;->$VALUES:[Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    invoke-virtual {v0}, [Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/startactions/metrics/InBookAaMenuFastMetrics$Modifier;->value:Ljava/lang/String;

    return-object v0
.end method
