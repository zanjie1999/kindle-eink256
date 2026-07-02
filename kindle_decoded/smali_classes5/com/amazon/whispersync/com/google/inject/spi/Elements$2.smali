.class final Lcom/amazon/whispersync/com/google/inject/spi/Elements$2;
.super Ljava/lang/Object;
.source "Elements.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Module;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/spi/Elements;->getModule(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$elements:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$2;->val$elements:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$2;->val$elements:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/spi/Element;

    .line 113
    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Element;->applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V

    goto :goto_0

    :cond_0
    return-void
.end method
