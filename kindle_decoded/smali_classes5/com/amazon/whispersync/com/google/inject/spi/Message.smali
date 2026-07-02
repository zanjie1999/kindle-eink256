.class public final Lcom/amazon/whispersync/com/google/inject/spi/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/amazon/whispersync/com/google/inject/spi/Element;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final message:Ljava/lang/String;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/com/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/whispersync/com/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->sources:Ljava/util/List;

    const-string p1, "message"

    .line 52
    invoke-static {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->message:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 124
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 125
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of([Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/whispersync/com/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
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

    .line 84
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/Message;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Lcom/amazon/whispersync/com/google/inject/spi/Message;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 106
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    .line 110
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->message:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/whispersync/com/google/inject/spi/Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    iget-object v2, p1, Lcom/amazon/whispersync/com/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->sources:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->message:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->sources:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Message;->message:Ljava/lang/String;

    return-object v0
.end method
