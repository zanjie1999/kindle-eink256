.class public Lcom/amazon/whispersync/com/google/inject/CreationException;
.super Ljava/lang/RuntimeException;
.source "CreationException.java"


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
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/CreationException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    .line 38
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(Z)V

    .line 39
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/CreationException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getOnlyCause(Ljava/util/Collection;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

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

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/CreationException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/CreationException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    const-string v1, "Guice creation errors"

    invoke-static {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->format(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
