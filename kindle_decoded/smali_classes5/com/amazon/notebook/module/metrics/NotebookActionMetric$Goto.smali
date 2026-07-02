.class public final enum Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;
.super Ljava/lang/Enum;
.source "NotebookActionMetric.kt"

# interfaces
.implements Lcom/amazon/notebook/module/metrics/NotebookActionMetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/metrics/NotebookActionMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Goto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;",
        ">;",
        "Lcom/amazon/notebook/module/metrics/NotebookActionMetric;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

.field public static final enum BOOKMARK:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

.field public static final enum HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

.field public static final enum NOTE:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

.field public static final enum POPULAR_HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    const/4 v2, 0x0

    const-string v3, "HIGHLIGHT"

    const-string v4, "GoToHighlight"

    .line 50
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    const/4 v2, 0x1

    const-string v3, "POPULAR_HIGHLIGHT"

    const-string v4, "GoToPopularHighlight"

    .line 51
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->POPULAR_HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    const/4 v2, 0x2

    const-string v3, "NOTE"

    const-string v4, "GoToNote"

    .line 52
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->NOTE:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    const/4 v2, 0x3

    const-string v3, "BOOKMARK"

    const-string v4, "GoToBookmark"

    .line 53
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->BOOKMARK:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->$VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;
    .locals 1

    const-class v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;
    .locals 1

    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->$VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    return-object v0
.end method


# virtual methods
.method public emit()Lkotlin/Unit;
    .locals 1

    .line 49
    invoke-static {p0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$DefaultImpls;->emit(Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->value:Ljava/lang/String;

    return-object v0
.end method
