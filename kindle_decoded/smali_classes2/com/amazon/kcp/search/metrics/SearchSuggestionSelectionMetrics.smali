.class public final Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;
.super Ljava/lang/Object;
.source "SearchSuggestionMetrics.kt"


# instance fields
.field private final keywordBeforeSuggestion:Ljava/lang/String;

.field private final suggestionPosition:I

.field private final suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keywordBeforeSuggestion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;->keywordBeforeSuggestion:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;->suggestionPosition:I

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;->suggestions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getKeywordBeforeSuggestion()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;->keywordBeforeSuggestion:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuggestionPosition()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;->suggestionPosition:I

    return v0
.end method

.method public final getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;->suggestions:Ljava/util/List;

    return-object v0
.end method
