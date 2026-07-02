.class public Lcom/amazon/kcp/search/AndroidSearchRecentSuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "AndroidSearchRecentSuggestionsProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "kindlereader"

.field private static final MODE:I = 0x1

.field private static m_MostRecentQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    const-string v0, "kindlereader"

    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, v0, v1}, Landroid/content/SearchRecentSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    return-void
.end method

.method public static clearSearchHistory(Landroid/content/Context;)V
    .locals 3

    .line 44
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "kindlereader"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 45
    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    const/4 p0, 0x0

    .line 46
    sput-object p0, Lcom/amazon/kcp/search/AndroidSearchRecentSuggestionsProvider;->m_MostRecentQuery:Ljava/lang/String;

    return-void
.end method

.method public static getMostRecentQuery()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kcp/search/AndroidSearchRecentSuggestionsProvider;->m_MostRecentQuery:Ljava/lang/String;

    return-object v0
.end method

.method public static saveToSearchHistory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 56
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "kindlereader"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 57
    invoke-virtual {v0, p1, p0}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sput-object p1, Lcom/amazon/kcp/search/AndroidSearchRecentSuggestionsProvider;->m_MostRecentQuery:Ljava/lang/String;

    return-void
.end method
