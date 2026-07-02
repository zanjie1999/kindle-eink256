.class public final Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;
.super Ljava/lang/Object;
.source "StaticInjectionRequest.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/Element;


# instance fields
.field private final source:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "source"

    .line 39
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;->source:Ljava/lang/Object;

    const-string/jumbo p1, "type"

    .line 40
    invoke-static {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 72
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;->type:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->requestStaticInjection([Ljava/lang/Class;)V

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

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;->type:Ljava/lang/Class;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->forStaticMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;->type:Ljava/lang/Class;

    return-object v0
.end method
