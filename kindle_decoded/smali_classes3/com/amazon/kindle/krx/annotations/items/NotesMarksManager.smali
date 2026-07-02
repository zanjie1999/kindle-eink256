.class public Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;
.super Ljava/lang/Object;
.source "NotesMarksManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private comparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemComparator;",
            ">;"
        }
    .end annotation
.end field

.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemFilter;",
            ">;"
        }
    .end annotation
.end field

.field private itemProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;->itemProviders:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;->filters:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;->comparators:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAnnotationItems(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 79
    sget-object p1, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;->TAG:Ljava/lang/String;

    const-string v0, "Null book passed in NotesMarksManager.getAnnotationItems(book)"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;->itemProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemProvider;

    .line 86
    :try_start_0
    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemProvider;->getItems(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 89
    sget-object v3, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;->TAG:Ljava/lang/String;

    const-string v4, "Unable to get annotation items from IAnnotationItemProvider."

    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public registerAnnotationItemComparator(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemComparator;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;->comparators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerAnnotationItemFilter(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemFilter;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerAnnotationItemProvider(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemProvider;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/krx/annotations/items/NotesMarksManager;->itemProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
