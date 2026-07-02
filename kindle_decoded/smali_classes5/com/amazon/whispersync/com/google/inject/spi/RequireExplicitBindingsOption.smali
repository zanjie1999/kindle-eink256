.class public final Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;
.super Ljava/lang/Object;
.source "RequireExplicitBindingsOption.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/Element;


# instance fields
.field private final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "source"

    .line 32
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;->source:Ljava/lang/Object;

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

    .line 44
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->requireExplicitBindings()V

    return-void
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;->source:Ljava/lang/Object;

    return-object v0
.end method
