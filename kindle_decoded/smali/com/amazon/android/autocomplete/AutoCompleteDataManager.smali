.class public Lcom/amazon/android/autocomplete/AutoCompleteDataManager;
.super Ljava/lang/Object;
.source "AutoCompleteDataManager.java"


# instance fields
.field private ternarySearchTree:Lcom/amazon/android/autocomplete/TernarySearchTree;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/amazon/android/autocomplete/TernarySearchTree;

    invoke-direct {v0}, Lcom/amazon/android/autocomplete/TernarySearchTree;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/autocomplete/AutoCompleteDataManager;->ternarySearchTree:Lcom/amazon/android/autocomplete/TernarySearchTree;

    return-void
.end method


# virtual methods
.method public getAutoCompleteSuggestions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/amazon/android/autocomplete/AutoCompleteDataManager;->ternarySearchTree:Lcom/amazon/android/autocomplete/TernarySearchTree;

    invoke-virtual {v0, p1}, Lcom/amazon/android/autocomplete/TernarySearchTree;->getWordSuggestions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 49
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    iget-object v2, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot provide suggestions for an empty or null prefix."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertEntries(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    iget-object v2, p0, Lcom/amazon/android/autocomplete/AutoCompleteDataManager;->ternarySearchTree:Lcom/amazon/android/autocomplete/TernarySearchTree;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/android/autocomplete/TernarySearchTree;->insert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
