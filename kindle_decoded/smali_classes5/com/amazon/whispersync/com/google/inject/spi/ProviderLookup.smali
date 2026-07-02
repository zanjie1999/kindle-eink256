.class public final Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;
.super Ljava/lang/Object;
.source "ProviderLookup.java"

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
.field private delegate:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final key:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "source"

    .line 41
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->source:Ljava/lang/Object;

    const-string p1, "key"

    .line 42
    invoke-static {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Key;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->delegate:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-object p0
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

    .line 54
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->initializeDelegate(Lcom/amazon/whispersync/com/google/inject/Provider;)V

    return-void
.end method

.method public getDelegate()Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->delegate:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-object v0
.end method

.method public getKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-object v0
.end method

.method public getProvider()Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup$1;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;)V

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public initializeDelegate(Lcom/amazon/whispersync/com/google/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->delegate:Lcom/amazon/whispersync/com/google/inject/Provider;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "delegate already initialized"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "delegate"

    .line 64
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Provider;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->delegate:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-void
.end method
