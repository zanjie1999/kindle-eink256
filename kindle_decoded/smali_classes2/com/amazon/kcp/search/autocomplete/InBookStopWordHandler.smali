.class Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;
.super Ljava/lang/Object;
.source "InBookStopWordHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;
    }
.end annotation


# static fields
.field private static currLangStopWords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private language:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;->currLangStopWords:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;->language:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;->context:Landroid/content/Context;

    return-void
.end method

.method private static getStopWords(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;->currLangStopWords:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->getLatinStopWordSet(Ljava/lang/String;)Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler$LatinLanguageStopWordSets;->getArrayResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 81
    :goto_0
    sget-object v0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;->currLangStopWords:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method isStopWord(Ljava/lang/String;)Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/autocomplete/InBookStopWordHandler;->getStopWords(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
