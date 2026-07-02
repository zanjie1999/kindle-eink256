.class public final enum Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;
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
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;",
        ">;",
        "Lcom/amazon/notebook/module/metrics/NotebookActionMetric;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum ALL_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum BLUE_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum BOOKMARKS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum CHAPTER_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum CLEAR:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum NOTES_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum ORANGE_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum PINK_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum POPULAR_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum STARRED_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

.field public static final enum YELLOW_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v2, 0x0

    const-string v3, "STARRED_TOGGLED"

    const-string v4, "StarFilterToggled"

    .line 31
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->STARRED_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v2, 0x1

    const-string v3, "ALL_HIGHLIGHTS_TOGGLED"

    const-string v4, "AllHighlightsFilterToggled"

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->ALL_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v2, 0x2

    const-string v3, "YELLOW_HIGHLIGHTS_TOGGLED"

    const-string v4, "YellowHighlightsFilterToggled"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->YELLOW_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v2, 0x3

    const-string v3, "BLUE_HIGHLIGHTS_TOGGLED"

    const-string v4, "BlueHighlightsFilterToggled"

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->BLUE_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v2, 0x4

    const-string v3, "PINK_HIGHLIGHTS_TOGGLED"

    const-string v4, "PinkHighlightsFilterToggled"

    .line 35
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->PINK_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v2, 0x5

    const-string v3, "ORANGE_HIGHLIGHTS_TOGGLED"

    const-string v4, "OrangeHighlightsFilterToggled"

    .line 36
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->ORANGE_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v2, 0x6

    const-string v3, "POPULAR_HIGHLIGHTS_TOGGLED"

    const-string v4, "PopularHighlightsFilterToggled"

    .line 37
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->POPULAR_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v2, 0x7

    const-string v3, "NOTES_TOGGLED"

    const-string v4, "NotesFilterToggled"

    .line 38
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->NOTES_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/16 v2, 0x8

    const-string v3, "BOOKMARKS_TOGGLED"

    const-string v4, "BookmarksFilterToggled"

    .line 39
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->BOOKMARKS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/16 v2, 0x9

    const-string v3, "CHAPTER_TOGGLED"

    const-string v4, "ChapterFilterToggled"

    .line 40
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->CHAPTER_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/16 v2, 0xa

    const-string v3, "CLEAR"

    const-string v4, "FiltersCleared"

    .line 41
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->CLEAR:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->$VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;
    .locals 1

    const-class v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;
    .locals 1

    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->$VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    return-object v0
.end method


# virtual methods
.method public emit()Lkotlin/Unit;
    .locals 1

    .line 30
    invoke-static {p0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$DefaultImpls;->emit(Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->value:Ljava/lang/String;

    return-object v0
.end method
