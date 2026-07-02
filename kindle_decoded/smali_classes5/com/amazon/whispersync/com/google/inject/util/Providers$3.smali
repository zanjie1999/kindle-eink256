.class final Lcom/amazon/whispersync/com/google/inject/util/Providers$3;
.super Ljava/lang/Object;
.source "Providers.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/ProviderWithDependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/util/Providers;->guicify(Lcom/amazon/whispersync/javax/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/spi/ProviderWithDependencies<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$delegate:Lcom/amazon/whispersync/javax/inject/Provider;

.field final synthetic val$dependencies:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/javax/inject/Provider;Ljava/util/Set;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Providers$3;->val$delegate:Lcom/amazon/whispersync/javax/inject/Provider;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/util/Providers$3;->val$dependencies:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Providers$3;->val$delegate:Lcom/amazon/whispersync/javax/inject/Provider;

    invoke-interface {v0}, Lcom/amazon/whispersync/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Providers$3;->val$dependencies:Ljava/util/Set;

    return-object v0
.end method

.method initialize(Lcom/amazon/whispersync/com/google/inject/Injector;)V
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Providers$3;->val$delegate:Lcom/amazon/whispersync/javax/inject/Provider;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "guicified("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/util/Providers$3;->val$delegate:Lcom/amazon/whispersync/javax/inject/Provider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
