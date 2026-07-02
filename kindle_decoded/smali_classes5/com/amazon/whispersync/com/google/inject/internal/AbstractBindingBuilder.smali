.class public abstract Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;
.super Ljava/lang/Object;
.source "AbstractBindingBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANNOTATION_ALREADY_SPECIFIED:Ljava/lang/String; = "More than one annotation is specified for this binding."

.field public static final BINDING_TO_NULL:Ljava/lang/String; = "Binding to null instances is not allowed. Use toProvider(Providers.of(null)) if this is your intended behaviour."

.field public static final CONSTANT_VALUE_ALREADY_SET:Ljava/lang/String; = "Constant value is set more than once."

.field public static final IMPLEMENTATION_ALREADY_SET:Ljava/lang/String; = "Implementation is set more than once."

.field protected static final NULL_KEY:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;"
        }
    .end annotation
.end field

.field public static final SCOPE_ALREADY_SET:Ljava/lang/String; = "Scope is set more than once."

.field public static final SINGLE_INSTANCE_AND_SCOPE:Ljava/lang/String; = "Setting the scope is not permitted when binding to a single instance."


# instance fields
.field protected final binder:Lcom/amazon/whispersync/com/google/inject/Binder;

.field private binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field protected position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->NULL_KEY:Lcom/amazon/whispersync/com/google/inject/Key;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Binder;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    .line 54
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->elements:Ljava/util/List;

    .line 55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->position:I

    .line 56
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingImpl;

    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->UNSCOPED:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    invoke-direct {p1, p3, p4, v0}, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)V

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    .line 57
    iget p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->position:I

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected annotatedWithInternal(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "annotationType"

    .line 72
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->checkNotAnnotated()V

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->withKey(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1
.end method

.method protected annotatedWithInternal(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "annotation"

    .line 80
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->checkNotAnnotated()V

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->withKey(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    return-object p1
.end method

.method public asEagerSingleton()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->checkNotScoped()V

    .line 100
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->withScoping(Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-void
.end method

.method protected checkNotAnnotated()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "More than one annotation is specified for this binding."

    invoke-interface {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected checkNotScoped()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    instance-of v1, v0, Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Setting the scope is not permitted when binding to a single instance."

    invoke-interface {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->isExplicitlyScoped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Scope is set more than once."

    invoke-interface {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected checkNotTargetted()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    instance-of v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingImpl;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Implementation is set more than once."

    invoke-interface {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-object v0
.end method

.method public in(Lcom/amazon/whispersync/com/google/inject/Scope;)V
    .locals 1

    const-string/jumbo v0, "scope"

    .line 93
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->checkNotScoped()V

    .line 95
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->forInstance(Lcom/amazon/whispersync/com/google/inject/Scope;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->withScoping(Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-void
.end method

.method public in(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "scopeAnnotation"

    .line 87
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->checkNotScoped()V

    .line 89
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->forAnnotation(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->withScoping(Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-void
.end method

.method protected keyTypeIsSet()Z
    .locals 2

    .line 104
    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->elements:Ljava/util/List;

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->position:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
