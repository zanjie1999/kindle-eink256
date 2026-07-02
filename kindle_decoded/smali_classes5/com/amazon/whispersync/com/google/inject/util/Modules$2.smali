.class final Lcom/amazon/whispersync/com/google/inject/util/Modules$2;
.super Ljava/lang/Object;
.source "Modules.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Module;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/util/Modules;->combine(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$modulesSet:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$2;->val$modulesSet:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 112
    const-class v2, Lcom/amazon/whispersync/com/google/inject/util/Modules$2;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$2;->val$modulesSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/Module;

    .line 114
    invoke-interface {p1, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->install(Lcom/amazon/whispersync/com/google/inject/Module;)V

    goto :goto_0

    :cond_0
    return-void
.end method
