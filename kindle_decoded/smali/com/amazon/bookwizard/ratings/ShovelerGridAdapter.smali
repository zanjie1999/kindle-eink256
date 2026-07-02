.class public Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShovelerGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/util/Map$Entry<",
        "+",
        "Lcom/amazon/bookwizard/data/Category;",
        "Ljava/util/List<",
        "Lcom/amazon/bookwizard/data/Book;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/bookwizard/data/Category;",
            "Lcom/amazon/bookwizard/ratings/ShovelerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;)V
    .locals 2

    .line 46
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$layout;->bookwizard_shoveler:I

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 48
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->adapters:Ljava/util/Map;

    return-void
.end method

.method private removeOldCollections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/amazon/bookwizard/data/Category;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;>;>;)V"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    iget-object v1, p0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 91
    check-cast p2, Lcom/amazon/bookwizard/ui/view/ShovelerView;

    if-nez p2, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 94
    sget v0, Lcom/amazon/bookwizard/R$layout;->bookwizard_shoveler:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/ui/view/ShovelerView;

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 98
    iget-object p3, p0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->adapters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;

    if-nez p3, :cond_1

    .line 100
    new-instance p3, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/data/Category;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p3, v0, v1}, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;-><init>(Lcom/amazon/bookwizard/data/Category;Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->adapters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->listener:Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;

    invoke-virtual {p3, p1}, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->setListener(Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;)V

    .line 104
    invoke-virtual {p2, p3}, Lcom/amazon/bookwizard/ui/view/ShovelerView;->setAdapter(Lcom/amazon/bookwizard/ratings/ShovelerAdapter;)V

    return-object p2
.end method

.method public notifyDataSetChanged(Lcom/amazon/bookwizard/data/Category;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;

    if-nez p1, :cond_0

    .line 62
    sget-object p1, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Failed to find adapter for category, not updating"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateCollections(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/amazon/bookwizard/data/Category;",
            "Ljava/util/List<",
            "Lcom/amazon/bookwizard/data/Book;",
            ">;>;>;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->removeOldCollections(Ljava/util/List;)V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    iget-object v1, p0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/amazon/bookwizard/ratings/ShovelerGridAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/bookwizard/data/Category;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;-><init>(Lcom/amazon/bookwizard/data/Category;Ljava/util/List;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
