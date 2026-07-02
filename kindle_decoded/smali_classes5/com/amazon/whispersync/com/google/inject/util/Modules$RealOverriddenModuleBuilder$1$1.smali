.class Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;
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

.field final synthetic val$overriddenKeys:Ljava/util/Set;

.field final synthetic val$overridesScopeAnnotations:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->this$1:Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1;

    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->val$overriddenKeys:Ljava/util/Set;

    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->val$overridesScopeAnnotations:Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;-><init>(Lcom/amazon/whispersync/com/google/inject/Binder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Object;
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->val$overriddenKeys:Ljava/util/Set;

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/Binding;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-super {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/DefaultElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Void;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->val$overriddenKeys:Ljava/util/Set;

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;->getExposedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 191
    invoke-super {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/DefaultElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Void;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$RealOverriddenModuleBuilder$1$1;->val$overridesScopeAnnotations:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-super {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/DefaultElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method
