.class final Lcom/amazon/whispersync/com/google/inject/Scopes$3;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/Scopes;->isSingleton(Lcom/amazon/whispersync/com/google/inject/Binding;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitEagerSingleton()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 147
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitEagerSingleton()Ljava/lang/Object;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/Scopes$3;->visitEagerSingleton()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitNoScoping()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNoScoping()Ljava/lang/Object;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/Scopes$3;->visitNoScoping()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitScope(Lcom/amazon/whispersync/com/google/inject/Scope;)Ljava/lang/Boolean;
    .locals 1

    .line 143
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Scopes;->SINGLETON:Lcom/amazon/whispersync/com/google/inject/Scope;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitScope(Lcom/amazon/whispersync/com/google/inject/Scope;)Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/Scopes$3;->visitScope(Lcom/amazon/whispersync/com/google/inject/Scope;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 138
    const-class v0, Lcom/amazon/whispersync/com/google/inject/Singleton;

    if-eq p1, v0, :cond_1

    const-class v0, Lcom/amazon/whispersync/javax/inject/Singleton;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/Scopes$3;->visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
