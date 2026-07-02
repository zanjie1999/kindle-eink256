.class Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;
.super Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

.field final synthetic val$overridesScopeAnnotations:Ljava/util/Set;

.field final synthetic val$scopeInstancesInUse:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->this$1:Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->val$overridesScopeAnnotations:Ljava/util/Set;

    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->val$scopeInstancesInUse:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;-><init>(Lcom/amazon/whispersync/com/google/inject/Binder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 0

    .line 255
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Void;
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->val$overridesScopeAnnotations:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-super {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/DefaultElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Object;

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$3;->val$scopeInstancesInUse:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;->getScope()Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {v1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "The scope for @%s is bound directly and cannot be overridden."

    invoke-interface {v0, p1, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
