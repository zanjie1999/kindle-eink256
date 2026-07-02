.class final Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl$1;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl;->createInternalFactory(Lcom/amazon/whispersync/com/google/inject/Binding;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$provider:Lcom/amazon/whispersync/com/google/inject/Provider;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/Provider;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl$1;->val$provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency;",
            "Z)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 335
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl$1;->val$provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-object p1
.end method

.method public bridge synthetic get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$ProviderBindingImpl$1;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method
