.class final Lcom/amazon/whispersync/com/google/inject/internal/Scoping$6;
.super Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
.source "Scoping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->forInstance(Lcom/amazon/whispersync/com/google/inject/Scope;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$scope:Lcom/amazon/whispersync/com/google/inject/Scope;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/Scope;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$6;->val$scope:Lcom/amazon/whispersync/com/google/inject/Scope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Scoping$1;)V

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$6;->val$scope:Lcom/amazon/whispersync/com/google/inject/Scope;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;->visitScope(Lcom/amazon/whispersync/com/google/inject/Scope;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$6;->val$scope:Lcom/amazon/whispersync/com/google/inject/Scope;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Lcom/amazon/whispersync/com/google/inject/Scope;)V

    return-void
.end method

.method public getScopeInstance()Lcom/amazon/whispersync/com/google/inject/Scope;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$6;->val$scope:Lcom/amazon/whispersync/com/google/inject/Scope;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$6;->val$scope:Lcom/amazon/whispersync/com/google/inject/Scope;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
