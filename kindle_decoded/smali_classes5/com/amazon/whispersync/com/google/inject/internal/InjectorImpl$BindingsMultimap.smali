.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;
.super Ljava/lang/Object;
.source "InjectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindingsMultimap"
.end annotation


# instance fields
.field final multimap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$1;)V
    .locals 0

    .line 877
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;-><init>()V

    return-void
.end method


# virtual methods
.method getAll(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;>;"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method put(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/Binding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;)V"
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 883
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 884
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
