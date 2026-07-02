.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$3;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createImplementedByBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/ImplementedBy;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;
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

.field final synthetic val$targetBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

.field final synthetic val$targetKey:Lcom/amazon/whispersync/com/google/inject/Key;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$3;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$3;->val$targetBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$3;->val$targetKey:Lcom/amazon/whispersync/com/google/inject/Key;

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
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 737
    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$3;->val$targetBinding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-virtual {p4}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object p4

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$3;->val$targetKey:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
