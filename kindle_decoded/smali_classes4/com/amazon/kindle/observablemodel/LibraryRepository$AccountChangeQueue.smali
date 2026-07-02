.class Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;
.super Ljava/lang/Object;
.source "LibraryRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountChangeQueue"
.end annotation


# instance fields
.field private final countChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final countChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/observablemodel/ModelCountUpdate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final groupChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/observablemodel/LibraryGroupListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final groupChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final modelChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final modelChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ContainerID;",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->modelChanges:Ljava/util/Map;

    .line 271
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->modelChangeListeners:Ljava/util/Map;

    .line 273
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->countChanges:Ljava/util/Map;

    .line 274
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->countChangeListeners:Ljava/util/Map;

    .line 276
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->groupChanges:Ljava/util/Map;

    .line 277
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->groupChangeListeners:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$1;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->countChanges:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->countChangeListeners:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->groupChanges:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->groupChangeListeners:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->modelChanges:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->modelChangeListeners:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public sendToListeners()V
    .locals 6

    .line 281
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->modelChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/ContainerID;

    .line 283
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 285
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;

    .line 286
    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->modelChangeListeners:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 288
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 289
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;

    if-eqz v5, :cond_2

    .line 291
    invoke-interface {v5, v3}, Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;->onChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)V

    goto :goto_0

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->countChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/ContainerID;

    .line 300
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 302
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;

    .line 303
    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->countChangeListeners:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_5

    .line 305
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 306
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    if-eqz v5, :cond_6

    .line 308
    invoke-interface {v5, v3}, Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;->onCountUpdate(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)V

    goto :goto_1

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->groupChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 316
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/ContainerID;

    .line 317
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 319
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;

    .line 320
    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->groupChangeListeners:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_9

    .line 322
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 323
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/observablemodel/LibraryGroupListener;

    if-eqz v5, :cond_a

    .line 325
    invoke-interface {v5, v3}, Lcom/amazon/kindle/observablemodel/LibraryGroupListener;->onGroupUpdate(Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;)V

    goto :goto_2

    :cond_b
    return-void
.end method
