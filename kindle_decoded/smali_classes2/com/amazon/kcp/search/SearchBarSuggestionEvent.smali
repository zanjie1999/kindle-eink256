.class public Lcom/amazon/kcp/search/SearchBarSuggestionEvent;
.super Ljava/lang/Object;
.source "SearchBarSuggestionEvent.kt"


# instance fields
.field private final query:Ljava/lang/String;

.field private final searchUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchBarSuggestionEvent;->query:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchBarSuggestionEvent;->searchUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionEvent;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchUrl()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionEvent;->searchUrl:Ljava/lang/String;

    return-object v0
.end method
