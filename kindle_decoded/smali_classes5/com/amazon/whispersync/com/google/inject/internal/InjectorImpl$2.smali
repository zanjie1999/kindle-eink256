.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createProvidedByBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/ProvidedBy;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

.field final synthetic val$providerBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

.field final synthetic val$providerKey:Lcom/amazon/whispersync/com/google/inject/Key;

.field final synthetic val$providerType:Ljava/lang/Class;

.field final synthetic val$rawType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;->val$providerKey:Lcom/amazon/whispersync/com/google/inject/Key;

    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;->val$providerBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;->val$rawType:Ljava/lang/Class;

    iput-object p5, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;->val$providerType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 1
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

    .line 683
    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;->val$providerKey:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {p1, p4}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    .line 684
    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;->val$providerBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-virtual {p4}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object p4

    const/4 v0, 0x1

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/com/google/inject/Provider;

    .line 687
    :try_start_0
    invoke-interface {p2}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 688
    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;->val$rawType:Ljava/lang/Class;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;->val$providerType:Ljava/lang/Class;

    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$2;->val$rawType:Ljava/lang/Class;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->subtypeNotProvided(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p2

    throw p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p2

    :catch_0
    move-exception p2

    .line 695
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method
