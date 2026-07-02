.class public final Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;
.super Ljava/lang/Object;
.source "InjectionRequest.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/Element;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/spi/Element;"
    }
.end annotation


# instance fields
.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;

.field private final type:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "source"

    .line 42
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->source:Ljava/lang/Object;

    const-string/jumbo p1, "type"

    .line 43
    invoke-static {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->type:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    const-string p1, "instance"

    .line 44
    invoke-static {p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->instance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 76
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->type:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->instance:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->requestInjection(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Object;)V

    return-void
.end method

.method public getInjectionPoints()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/ConfigurationException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->type:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    return-object v0
.end method
