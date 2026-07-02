.class public final Lcom/amazon/whispersync/com/google/inject/ProvisionException;
.super Ljava/lang/RuntimeException;
.source "ProvisionException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/ProvisionException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    .line 40
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(Z)V

    .line 41
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/ProvisionException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getOnlyCause(Ljava/util/Collection;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 50
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Message;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/ProvisionException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 45
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/whispersync/com/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/ProvisionException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-void
.end method


# virtual methods
.method public getErrorMessages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/ProvisionException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/ProvisionException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    const-string v1, "Guice provision errors"

    invoke-static {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->format(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
