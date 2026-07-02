.class final Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;
.super Ljava/lang/Object;
.source "ConstantFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final initializable:Lcom/amazon/whispersync/com/google/inject/internal/Initializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/Initializable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Initializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Initializable<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;->initializable:Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 35
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;->initializable:Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Initializable;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;->initializable:Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
