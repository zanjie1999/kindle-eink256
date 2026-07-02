.class final Lcom/amazon/whispersync/com/google/inject/internal/Scoping$1;
.super Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
.source "Scoping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Scoping$1;)V

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;->visitNoScoping()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;)V
    .locals 0

    return-void
.end method

.method public getScopeInstance()Lcom/amazon/whispersync/com/google/inject/Scope;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Scopes;->NO_SCOPE:Lcom/amazon/whispersync/com/google/inject/Scope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Scopes;->NO_SCOPE:Lcom/amazon/whispersync/com/google/inject/Scope;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
