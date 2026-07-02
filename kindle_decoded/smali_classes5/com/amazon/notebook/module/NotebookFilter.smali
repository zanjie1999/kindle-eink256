.class public final enum Lcom/amazon/notebook/module/NotebookFilter;
.super Ljava/lang/Enum;
.source "NotebookFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/NotebookFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/NotebookFilter;

.field public static final enum ALL:Lcom/amazon/notebook/module/NotebookFilter;

.field public static final enum BOOKMARKS:Lcom/amazon/notebook/module/NotebookFilter;

.field public static final enum HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

.field public static final enum HIGHLIGHTS_BLUE:Lcom/amazon/notebook/module/NotebookFilter;

.field public static final enum HIGHLIGHTS_ORANGE:Lcom/amazon/notebook/module/NotebookFilter;

.field public static final enum HIGHLIGHTS_PINK:Lcom/amazon/notebook/module/NotebookFilter;

.field public static final enum HIGHLIGHTS_YELLOW:Lcom/amazon/notebook/module/NotebookFilter;

.field static final HIGHLIGHT_COLOR_FILTERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/notebook/module/NotebookFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NOTES:Lcom/amazon/notebook/module/NotebookFilter;

.field public static final enum POPULAR_HIGHLIGHT:Lcom/amazon/notebook/module/NotebookFilter;

.field public static final enum STARRED:Lcom/amazon/notebook/module/NotebookFilter;


# instance fields
.field final colorTitle:Ljava/lang/String;

.field final metric:Lcom/amazon/notebook/module/metrics/NotebookActionMetric;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 11
    new-instance v0, Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->CLEAR:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ALL"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/amazon/notebook/module/NotebookFilter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    .line 12
    new-instance v0, Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->BOOKMARKS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v4, 0x1

    const-string v5, "BOOKMARKS"

    invoke-direct {v0, v5, v4, v3, v1}, Lcom/amazon/notebook/module/NotebookFilter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->BOOKMARKS:Lcom/amazon/notebook/module/NotebookFilter;

    .line 13
    new-instance v0, Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->ALL_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v5, 0x2

    const-string v6, "HIGHLIGHTS"

    invoke-direct {v0, v6, v5, v3, v1}, Lcom/amazon/notebook/module/NotebookFilter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    .line 14
    new-instance v0, Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v1, Lcom/amazon/notebook/module/ColorHighlightProperties;->BLUE:Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->BLUE_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v7, 0x3

    const-string v8, "HIGHLIGHTS_BLUE"

    invoke-direct {v0, v8, v7, v1, v6}, Lcom/amazon/notebook/module/NotebookFilter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_BLUE:Lcom/amazon/notebook/module/NotebookFilter;

    .line 15
    new-instance v0, Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v1, Lcom/amazon/notebook/module/ColorHighlightProperties;->ORANGE:Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->ORANGE_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v8, 0x4

    const-string v9, "HIGHLIGHTS_ORANGE"

    invoke-direct {v0, v9, v8, v1, v6}, Lcom/amazon/notebook/module/NotebookFilter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_ORANGE:Lcom/amazon/notebook/module/NotebookFilter;

    .line 16
    new-instance v0, Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v1, Lcom/amazon/notebook/module/ColorHighlightProperties;->PINK:Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->PINK_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v9, 0x5

    const-string v10, "HIGHLIGHTS_PINK"

    invoke-direct {v0, v10, v9, v1, v6}, Lcom/amazon/notebook/module/NotebookFilter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_PINK:Lcom/amazon/notebook/module/NotebookFilter;

    .line 17
    new-instance v0, Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v1, Lcom/amazon/notebook/module/ColorHighlightProperties;->YELLOW:Lcom/amazon/notebook/module/ColorHighlightProperties;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->YELLOW_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v10, 0x6

    const-string v11, "HIGHLIGHTS_YELLOW"

    invoke-direct {v0, v11, v10, v1, v6}, Lcom/amazon/notebook/module/NotebookFilter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_YELLOW:Lcom/amazon/notebook/module/NotebookFilter;

    .line 18
    new-instance v0, Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->NOTES_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/4 v6, 0x7

    const-string v11, "NOTES"

    invoke-direct {v0, v11, v6, v3, v1}, Lcom/amazon/notebook/module/NotebookFilter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->NOTES:Lcom/amazon/notebook/module/NotebookFilter;

    .line 19
    new-instance v0, Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->POPULAR_HIGHLIGHTS_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/16 v11, 0x8

    const-string v12, "POPULAR_HIGHLIGHT"

    invoke-direct {v0, v12, v11, v3, v1}, Lcom/amazon/notebook/module/NotebookFilter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->POPULAR_HIGHLIGHT:Lcom/amazon/notebook/module/NotebookFilter;

    .line 20
    new-instance v0, Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->STARRED_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    const/16 v12, 0x9

    const-string v13, "STARRED"

    invoke-direct {v0, v13, v12, v3, v1}, Lcom/amazon/notebook/module/NotebookFilter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/amazon/notebook/module/NotebookFilter;

    .line 10
    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    aput-object v3, v1, v2

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->BOOKMARKS:Lcom/amazon/notebook/module/NotebookFilter;

    aput-object v3, v1, v4

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    aput-object v3, v1, v5

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_BLUE:Lcom/amazon/notebook/module/NotebookFilter;

    aput-object v3, v1, v7

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_ORANGE:Lcom/amazon/notebook/module/NotebookFilter;

    aput-object v3, v1, v8

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_PINK:Lcom/amazon/notebook/module/NotebookFilter;

    aput-object v3, v1, v9

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_YELLOW:Lcom/amazon/notebook/module/NotebookFilter;

    aput-object v3, v1, v10

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->NOTES:Lcom/amazon/notebook/module/NotebookFilter;

    aput-object v3, v1, v6

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->POPULAR_HIGHLIGHT:Lcom/amazon/notebook/module/NotebookFilter;

    aput-object v3, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/amazon/notebook/module/NotebookFilter;->$VALUES:[Lcom/amazon/notebook/module/NotebookFilter;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 25
    invoke-static {}, Lcom/amazon/notebook/module/NotebookFilter;->values()[Lcom/amazon/notebook/module/NotebookFilter;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 26
    invoke-virtual {v4}, Lcom/amazon/notebook/module/NotebookFilter;->getColorTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 27
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/Sets;->immutableEnumSet(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHT_COLOR_FILTERS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/notebook/module/metrics/NotebookActionMetric;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookFilter;->colorTitle:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookFilter;->metric:Lcom/amazon/notebook/module/metrics/NotebookActionMetric;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/NotebookFilter;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/notebook/module/NotebookFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/NotebookFilter;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/NotebookFilter;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/notebook/module/NotebookFilter;->$VALUES:[Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/NotebookFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/NotebookFilter;

    return-object v0
.end method


# virtual methods
.method public getColorTitle()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookFilter;->colorTitle:Ljava/lang/String;

    return-object v0
.end method
