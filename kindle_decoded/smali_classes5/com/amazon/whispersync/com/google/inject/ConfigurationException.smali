.class public final Lcom/amazon/whispersync/com/google/inject/ConfigurationException;
.super Ljava/lang/RuntimeException;
.source "ConfigurationException.java"


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

.field private partialValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->partialValue:Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    .line 40
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

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    const-string v1, "Guice configuration errors"

    invoke-static {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->format(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->partialValue:Ljava/lang/Object;

    return-object v0
.end method

.method public withPartialValue(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/ConfigurationException;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->partialValue:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->partialValue:Ljava/lang/Object;

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string v1, "Can\'t clobber existing partial value %s with %s"

    invoke-static {v0, v1, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->messages:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    .line 48
    iput-object p1, v0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->partialValue:Ljava/lang/Object;

    return-object v0
.end method
