.class public final Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;
.source "ConstantBindingBuilderImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedConstantBindingBuilder;
.implements Lcom/amazon/whispersync/com/google/inject/binder/ConstantBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder<",
        "TT;>;",
        "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedConstantBindingBuilder;",
        "Lcom/amazon/whispersync/com/google/inject/binder/ConstantBindingBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Binder;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->NULL_KEY:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;-><init>(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V

    return-void
.end method

.method private toConstant(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->keyTypeIsSet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Constant value is set more than once."

    invoke-interface {p1, v0, p2}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    :goto_0
    move-object v4, p1

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-nez p2, :cond_3

    .line 120
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Binding to null instances is not allowed. Use toProvider(Providers.of(null)) if this is your intended behaviour."

    invoke-interface {p1, v2, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_3
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v5

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v6

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-void
.end method


# virtual methods
.method public annotatedWith(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ConstantBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ConstantBindingBuilder;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->annotatedWithInternal(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/binder/ConstantBindingBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;->annotatedWithInternal(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    return-object p0
.end method

.method public to(B)V
    .locals 1

    .line 86
    const-class v0, Ljava/lang/Byte;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(C)V
    .locals 1

    .line 82
    const-class v0, Ljava/lang/Character;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(D)V
    .locals 1

    .line 70
    const-class v0, Ljava/lang/Double;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(F)V
    .locals 1

    .line 74
    const-class v0, Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(I)V
    .locals 1

    .line 58
    const-class v0, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(J)V
    .locals 1

    .line 62
    const-class v0, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 90
    const-class v0, Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;)V"
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(Ljava/lang/String;)V
    .locals 1

    .line 54
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(S)V
    .locals 1

    .line 78
    const-class v0, Ljava/lang/Short;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public to(Z)V
    .locals 1

    .line 66
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ConstantBindingBuilder"

    return-object v0
.end method
