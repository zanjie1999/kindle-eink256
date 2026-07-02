.class final Lcom/amazon/whispersync/com/google/inject/Scopes$1;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Scope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/Scopes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 44
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;-><init>(Lcom/amazon/whispersync/com/google/inject/Scopes$1;Lcom/amazon/whispersync/com/google/inject/Provider;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Scopes.SINGLETON"

    return-object v0
.end method
