.class Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;
.super Ljava/util/LinkedHashMap;
.source "SearchBarSuggestionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchBarSuggestionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitedResultsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchBarSuggestionManager;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/search/SearchBarSuggestionManager;IFZ)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;->this$0:Lcom/amazon/kcp/search/SearchBarSuggestionManager;

    .line 46
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/search/SearchBarSuggestionManager;IFZLcom/amazon/kcp/search/SearchBarSuggestionManager$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;-><init>(Lcom/amazon/kcp/search/SearchBarSuggestionManager;IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
