.class Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;
.super Lcom/amazon/whispersync/com/google/inject/AbstractModule;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;->with(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;

.field final synthetic val$overrides:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;Ljava/lang/Iterable;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->this$0:Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->val$overrides:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/amazon/whispersync/com/google/inject/Binding;)Lcom/amazon/whispersync/com/google/inject/Scope;
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->getScopeInstanceOrNull(Lcom/amazon/whispersync/com/google/inject/Binding;)Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object p0

    return-object p0
.end method

.method private getScopeInstanceOrNull(Lcom/amazon/whispersync/com/google/inject/Binding;)Lcom/amazon/whispersync/com/google/inject/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/Scope;"
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$4;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$4;-><init>(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;)V

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binding;->acceptScopingVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Scope;

    return-object p1
.end method


# virtual methods
.method public configure()V
    .locals 12

    .line 151
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->binder()Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->this$0:Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;->access$100(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements;->getElements(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 157
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 158
    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/com/google/inject/spi/Element;

    .line 159
    instance-of v3, v2, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;

    if-eqz v3, :cond_1

    .line 160
    check-cast v2, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;

    .line 161
    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->newPrivateBinder()Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    move-result-object v0

    invoke-interface {v2}, Lcom/amazon/whispersync/com/google/inject/spi/Element;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    move-result-object v0

    .line 162
    invoke-interface {v2}, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;->getExposedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/Key;

    .line 163
    invoke-interface {v2, v3}, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;->getExposedSource(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/amazon/whispersync/com/google/inject/PrivateBinder;->expose(Lcom/amazon/whispersync/com/google/inject/Key;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-interface {v2}, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;->getElements()Ljava/util/List;

    move-result-object v1

    .line 171
    :cond_1
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 172
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->val$overrides:Ljava/lang/Iterable;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements;->getElements(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 174
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 175
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 178
    new-instance v2, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;

    invoke-direct {v2, p0, v0, v5, v9}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;-><init>(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v2, v1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;->writeAll(Ljava/lang/Iterable;)V

    .line 198
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 199
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 200
    new-instance v11, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v0

    move-object v6, v1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$2;-><init>(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v11, v8}, Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;->writeAll(Ljava/lang/Iterable;)V

    .line 255
    new-instance v2, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;

    invoke-direct {v2, p0, v0, v9, v1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;-><init>(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {v2, v10}, Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;->writeAll(Ljava/lang/Iterable;)V

    return-void
.end method
