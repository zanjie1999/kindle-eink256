.class public final enum Lcom/amazon/notebook/module/metrics/Color;
.super Ljava/lang/Enum;
.source "NotebookHighlightActionMetric.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/metrics/Color$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/metrics/Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/metrics/Color;

.field public static final Companion:Lcom/amazon/notebook/module/metrics/Color$Companion;

.field public static final enum UNKNOWN:Lcom/amazon/notebook/module/metrics/Color;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/notebook/module/metrics/Color;

    new-instance v1, Lcom/amazon/notebook/module/metrics/Color;

    const/4 v2, 0x0

    const-string v3, "YELLOW"

    const-string v4, "Yellow"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/Color;

    const/4 v2, 0x1

    const-string v3, "BLUE"

    const-string v4, "Blue"

    .line 30
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/Color;

    const/4 v2, 0x2

    const-string v3, "PINK"

    const-string v4, "Pink"

    .line 31
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/Color;

    const/4 v2, 0x3

    const-string v3, "ORANGE"

    const-string v4, "Orange"

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/Color;

    const/4 v2, 0x4

    const-string v3, "UNKNOWN"

    const-string v4, "Unknown"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/Color;->UNKNOWN:Lcom/amazon/notebook/module/metrics/Color;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/notebook/module/metrics/Color;->$VALUES:[Lcom/amazon/notebook/module/metrics/Color;

    new-instance v0, Lcom/amazon/notebook/module/metrics/Color$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/notebook/module/metrics/Color$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/notebook/module/metrics/Color;->Companion:Lcom/amazon/notebook/module/metrics/Color$Companion;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/notebook/module/metrics/Color;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/metrics/Color;
    .locals 1

    const-class v0, Lcom/amazon/notebook/module/metrics/Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/metrics/Color;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/metrics/Color;
    .locals 1

    sget-object v0, Lcom/amazon/notebook/module/metrics/Color;->$VALUES:[Lcom/amazon/notebook/module/metrics/Color;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/metrics/Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/metrics/Color;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/notebook/module/metrics/Color;->value:Ljava/lang/String;

    return-object v0
.end method
