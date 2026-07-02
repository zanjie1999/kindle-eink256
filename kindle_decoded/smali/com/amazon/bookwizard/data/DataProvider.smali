.class public Lcom/amazon/bookwizard/data/DataProvider;
.super Ljava/lang/Object;
.source "DataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;
    }
.end annotation


# static fields
.field public static final EMPTY_FILTER:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final PREFERRED_FILTER:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Lcom/amazon/bookwizard/data/Genre;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRELOAD_LIMIT:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final WANT_TO_READ_FILTER:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Lcom/amazon/bookwizard/data/Rating;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bookDetail:Lcom/amazon/bookwizard/data/BookDetail;

.field private final books:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;"
        }
    .end annotation
.end field

.field private final booksShownDetails:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Country;",
            ">;"
        }
    .end annotation
.end field

.field private final genres:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/bookwizard/data/Genre;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final payoffDownload:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/bookwizard/service/PayoffRec;",
            ">;"
        }
    .end annotation
.end field

.field private payoffFlavor:Lcom/amazon/bookwizard/service/StepFlavor;

.field private final payoffRecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/service/PayoffRec;",
            ">;"
        }
    .end annotation
.end field

.field private final popular:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;"
        }
    .end annotation
.end field

.field private final ratings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/bookwizard/data/Rating;",
            ">;"
        }
    .end annotation
.end field

.field private final recs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Recommendation;",
            ">;"
        }
    .end annotation
.end field

.field private runningState:Lcom/amazon/bookwizard/service/State;

.field private final toDownload:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/bookwizard/data/Recommendation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/amazon/bookwizard/data/DataProvider$1;

    invoke-direct {v0}, Lcom/amazon/bookwizard/data/DataProvider$1;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/data/DataProvider;->EMPTY_FILTER:Lcom/google/common/base/Predicate;

    .line 64
    new-instance v0, Lcom/amazon/bookwizard/data/DataProvider$2;

    invoke-direct {v0}, Lcom/amazon/bookwizard/data/DataProvider$2;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/data/DataProvider;->PREFERRED_FILTER:Lcom/google/common/base/Predicate;

    .line 70
    new-instance v0, Lcom/amazon/bookwizard/data/DataProvider$3;

    invoke-direct {v0}, Lcom/amazon/bookwizard/data/DataProvider$3;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/data/DataProvider;->WANT_TO_READ_FILTER:Lcom/google/common/base/Predicate;

    .line 77
    const-class v0, Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/data/DataProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->genres:Ljava/util/Map;

    .line 101
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->popular:Ljava/util/List;

    .line 102
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->books:Ljava/util/Map;

    .line 103
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->ratings:Ljava/util/Map;

    .line 104
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->recs:Ljava/util/List;

    .line 105
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->toDownload:Ljava/util/Set;

    .line 106
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->listeners:Ljava/util/Set;

    .line 107
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->booksShownDetails:Ljava/util/Set;

    .line 108
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->countries:Ljava/util/List;

    .line 109
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffRecs:Ljava/util/List;

    .line 110
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffDownload:Ljava/util/Set;

    return-void
.end method

.method private dedupe(Lcom/amazon/bookwizard/data/Book;)Lcom/amazon/bookwizard/data/Book;
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->books:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->books:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/data/Book;

    return-object p1

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->books:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private isCurrent(Lcom/amazon/bookwizard/data/Book;)Z
    .locals 2

    .line 745
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/DataProvider;->getPreferredGenres()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 746
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->popular:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private notifyListeners()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 726
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 728
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;

    if-eqz v1, :cond_0

    .line 730
    invoke-interface {v1, p0}, Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;->onDataChanged(Lcom/amazon/bookwizard/data/DataProvider;)V

    goto :goto_0

    .line 732
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addBooks(Lcom/amazon/bookwizard/data/Genre;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/bookwizard/data/Genre;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 237
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/bookwizard/data/Book;

    invoke-direct {p0, v1}, Lcom/amazon/bookwizard/data/DataProvider;->dedupe(Lcom/amazon/bookwizard/data/Book;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/amazon/bookwizard/data/DataProvider;->genres:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 239
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 243
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/bookwizard/data/Book;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_3
    invoke-direct {p0}, Lcom/amazon/bookwizard/data/DataProvider;->notifyListeners()V

    return-void

    .line 232
    :cond_4
    :goto_1
    sget-object p1, Lcom/amazon/bookwizard/data/DataProvider;->TAG:Ljava/lang/String;

    const-string p2, "addBooks: null"

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDataChangedListener(Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;)V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->listeners:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGenres(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Genre;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 144
    sget-object p1, Lcom/amazon/bookwizard/data/DataProvider;->TAG:Ljava/lang/String;

    const-string v0, "addGenres: null"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/data/Genre;

    .line 149
    iget-object v1, p0, Lcom/amazon/bookwizard/data/DataProvider;->genres:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/amazon/bookwizard/data/DataProvider;->notifyListeners()V

    return-void
.end method

.method public addPopularBooks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 294
    sget-object p1, Lcom/amazon/bookwizard/data/DataProvider;->TAG:Ljava/lang/String;

    const-string v0, "addPopularBooks: null"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 299
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/data/Book;

    .line 300
    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/data/DataProvider;->dedupe(Lcom/amazon/bookwizard/data/Book;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/amazon/bookwizard/data/DataProvider;->popular:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/amazon/bookwizard/data/DataProvider;->popular:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_2
    invoke-direct {p0}, Lcom/amazon/bookwizard/data/DataProvider;->notifyListeners()V

    return-void
.end method

.method public addRelatedBooks(Lcom/amazon/bookwizard/data/Category;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/bookwizard/data/Category;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 262
    :cond_0
    sget-object v0, Lcom/amazon/bookwizard/data/Category;->POPULAR:Lcom/amazon/bookwizard/data/Category;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/DataProvider;->getPopularBooks()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/DataProvider;->getGenres()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 263
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/data/Book;

    .line 264
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 265
    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/data/DataProvider;->dedupe(Lcom/amazon/bookwizard/data/Book;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public clearBookDetail()V
    .locals 1

    const/4 v0, 0x0

    .line 567
    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->bookDetail:Lcom/amazon/bookwizard/data/BookDetail;

    return-void
.end method

.method public clearBooksToDownload()V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffDownload:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 649
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->toDownload:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearPayoffs()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffRecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffDownload:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffFlavor:Lcom/amazon/bookwizard/service/StepFlavor;

    return-void
.end method

.method public clearRecommendations()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->recs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 496
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/DataProvider;->clearPayoffs()V

    return-void
.end method

.method public getActiveRatings()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/bookwizard/data/Book;",
            "Lcom/amazon/bookwizard/data/Rating;",
            ">;"
        }
    .end annotation

    .line 520
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/amazon/bookwizard/data/DataProvider;->ratings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 522
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/amazon/bookwizard/data/DataProvider;->getBook(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/bookwizard/data/DataProvider;->isCurrent(Lcom/amazon/bookwizard/data/Book;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/amazon/bookwizard/data/DataProvider;->getBook(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getActiveRatingsCount()I
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/DataProvider;->getActiveRatings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getBook(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Book;
    .locals 1

    .line 279
    invoke-static {p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->books:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/data/Book;

    return-object p1
.end method

.method public getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->bookDetail:Lcom/amazon/bookwizard/data/BookDetail;

    return-object v0
.end method

.method public getCategory(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Category;
    .locals 1

    const-string/jumbo v0, "popular"

    .line 164
    invoke-static {v0, p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object p1, Lcom/amazon/bookwizard/data/Category;->POPULAR:Lcom/amazon/bookwizard/data/Category;

    return-object p1

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/data/DataProvider;->getGenre(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Genre;

    move-result-object p1

    return-object p1
.end method

.method public getCountries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Country;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->countries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->countries:Ljava/util/List;

    return-object v0

    .line 706
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 707
    invoke-static {v3}, Lcom/amazon/bookwizard/data/Country;->isAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 708
    iget-object v4, p0, Lcom/amazon/bookwizard/data/DataProvider;->countries:Ljava/util/List;

    new-instance v5, Lcom/amazon/bookwizard/data/Country;

    invoke-direct {v5, v3}, Lcom/amazon/bookwizard/data/Country;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->countries:Ljava/util/List;

    new-instance v1, Lcom/amazon/bookwizard/data/DataProvider$4;

    invoke-direct {v1, p0}, Lcom/amazon/bookwizard/data/DataProvider$4;-><init>(Lcom/amazon/bookwizard/data/DataProvider;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 718
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->countries:Ljava/util/List;

    return-object v0
.end method

.method public getGenre(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Genre;
    .locals 4

    .line 180
    invoke-static {p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->genres:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/bookwizard/data/Genre;

    .line 185
    invoke-virtual {v2}, Lcom/amazon/bookwizard/data/Genre;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getGenres()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/bookwizard/data/Genre;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->genres:Ljava/util/Map;

    return-object v0
.end method

.method public getPayoffDownloadCount()I
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffDownload:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getPayoffFlavor()Lcom/amazon/bookwizard/service/StepFlavor;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffFlavor:Lcom/amazon/bookwizard/service/StepFlavor;

    return-object v0
.end method

.method public getPayoffRecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/service/PayoffRec;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffRecs:Ljava/util/List;

    return-object v0
.end method

.method public getPopularBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->popular:Ljava/util/List;

    return-object v0
.end method

.method public getPreferredEmptyGenres()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/bookwizard/data/Genre;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;>;"
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/DataProvider;->getPreferredGenres()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/amazon/bookwizard/data/DataProvider;->EMPTY_FILTER:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->filterValues(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredGenres()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/bookwizard/data/Genre;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;>;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->genres:Ljava/util/Map;

    sget-object v1, Lcom/amazon/bookwizard/data/DataProvider;->PREFERRED_FILTER:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->filterKeys(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRating(Lcom/amazon/bookwizard/data/Book;)Lcom/amazon/bookwizard/data/Rating;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 439
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/data/DataProvider;->getRating(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Rating;

    move-result-object p1

    return-object p1
.end method

.method public getRating(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Rating;
    .locals 1

    .line 419
    invoke-static {p1}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->ratings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/data/Rating;

    return-object p1
.end method

.method public getRecommendations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Recommendation;",
            ">;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->recs:Ljava/util/List;

    return-object v0
.end method

.method public getRunningState()Lcom/amazon/bookwizard/service/State;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->runningState:Lcom/amazon/bookwizard/service/State;

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Lcom/amazon/bookwizard/service/State;

    invoke-direct {v0}, Lcom/amazon/bookwizard/service/State;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getWantToRead()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Recommendation;",
            ">;"
        }
    .end annotation

    .line 506
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 507
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/DataProvider;->getActiveRatings()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/amazon/bookwizard/data/DataProvider;->WANT_TO_READ_FILTER:Lcom/google/common/base/Predicate;

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->filterValues(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/bookwizard/data/Book;

    .line 508
    new-instance v3, Lcom/amazon/bookwizard/data/Recommendation;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/amazon/bookwizard/data/Recommendation;-><init>(Lcom/amazon/bookwizard/data/Book;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasShownBookDetail(Ljava/lang/String;)Z
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->booksShownDetails:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMarkedForDownload(Lcom/amazon/bookwizard/data/Recommendation;)Z
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->toDownload:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMarkedForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffDownload:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public markForDownload(Lcom/amazon/bookwizard/data/Recommendation;)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->toDownload:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public markForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffDownload:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDataChangedListener(Lcom/amazon/bookwizard/data/DataProvider$DataChangedListener;)V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 599
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 601
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 602
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method

.method public removeRating(Lcom/amazon/bookwizard/data/Book;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->ratings:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBookDetail(Lcom/amazon/bookwizard/data/BookDetail;)V
    .locals 1

    .line 545
    iput-object p1, p0, Lcom/amazon/bookwizard/data/DataProvider;->bookDetail:Lcom/amazon/bookwizard/data/BookDetail;

    if-eqz p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->booksShownDetails:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/BookDetail;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/amazon/bookwizard/data/DataProvider;->notifyListeners()V

    return-void
.end method

.method public setPayoffRecs(Lcom/amazon/bookwizard/service/StepFlavor;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/bookwizard/service/StepFlavor;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/service/PayoffRec;",
            ">;)V"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffRecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 328
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffRecs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    iput-object p1, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffFlavor:Lcom/amazon/bookwizard/service/StepFlavor;

    .line 331
    invoke-direct {p0}, Lcom/amazon/bookwizard/data/DataProvider;->notifyListeners()V

    return-void
.end method

.method public setRating(Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/data/Rating;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->ratings:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 404
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/bookwizard/data/DataProvider;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setRating: null book or rating"

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRecommendations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Recommendation;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 464
    sget-object p1, Lcom/amazon/bookwizard/data/DataProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setRecommendations: null recs"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 468
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/data/Recommendation;

    .line 469
    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/Recommendation;->getBook()Lcom/amazon/bookwizard/data/Book;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/bookwizard/data/DataProvider;->dedupe(Lcom/amazon/bookwizard/data/Book;)Lcom/amazon/bookwizard/data/Book;

    .line 470
    iget-object v1, p0, Lcom/amazon/bookwizard/data/DataProvider;->recs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/data/DataProvider;->markForDownload(Lcom/amazon/bookwizard/data/Recommendation;)V

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/DataProvider;->getWantToRead()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/data/Recommendation;

    .line 475
    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/data/DataProvider;->markForDownload(Lcom/amazon/bookwizard/data/Recommendation;)V

    goto :goto_1

    .line 478
    :cond_2
    invoke-direct {p0}, Lcom/amazon/bookwizard/data/DataProvider;->notifyListeners()V

    return-void
.end method

.method public setRunningState(Lcom/amazon/bookwizard/service/State;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/amazon/bookwizard/data/DataProvider;->runningState:Lcom/amazon/bookwizard/service/State;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->genres:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 125
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->popular:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->books:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->ratings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->recs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 130
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->toDownload:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 131
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->countries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffRecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffDownload:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public unmarkForDownload(Lcom/amazon/bookwizard/data/Recommendation;)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->toDownload:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unmarkForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider;->payoffDownload:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
