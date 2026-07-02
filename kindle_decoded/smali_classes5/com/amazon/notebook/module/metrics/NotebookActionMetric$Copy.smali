.class public final enum Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;
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
    name = "Copy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;",
        ">;",
        "Lcom/amazon/notebook/module/metrics/NotebookActionMetric;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

.field public static final enum BOOKMARK:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

.field public static final enum DENIED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

.field public static final enum HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

.field public static final enum NOTE:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

.field public static final enum POPULAR_HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    const/4 v2, 0x0

    const-string v3, "HIGHLIGHT"

    const-string v4, "CopyHighlight"

    .line 57
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    const/4 v2, 0x1

    const-string v3, "POPULAR_HIGHLIGHT"

    const-string v4, "CopyPopularHighlight"

    .line 58
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->POPULAR_HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    const/4 v2, 0x2

    const-string v3, "NOTE"

    const-string v4, "CopyNote"

    .line 59
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->NOTE:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    const/4 v2, 0x3

    const-string v3, "BOOKMARK"

    const-string v4, "CopyBookmark"

    .line 60
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->BOOKMARK:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    const/4 v2, 0x4

    const-string v3, "DENIED"

    const-string v4, "CopyDenied"

    .line 61
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->DENIED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->$VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;
    .locals 1

    const-class v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;
    .locals 1

    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->$VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    return-object v0
.end method


# virtual methods
.method public emit()Lkotlin/Unit;
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$DefaultImpls;->emit(Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->value:Ljava/lang/String;

    return-object v0
.end method
