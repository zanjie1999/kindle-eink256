.class Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;
.super Lcom/amazon/whispersync/com/google/inject/spi/DefaultElementVisitor;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/util/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/spi/DefaultElementVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final binder:Lcom/amazon/whispersync/com/google/inject/Binder;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 0

    .line 288
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/spi/DefaultElementVisitor;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    return-void
.end method


# virtual methods
.method protected bridge synthetic visitOther(Lcom/amazon/whispersync/com/google/inject/spi/Element;)Ljava/lang/Object;
    .locals 0

    .line 285
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;->visitOther(Lcom/amazon/whispersync/com/google/inject/spi/Element;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected visitOther(Lcom/amazon/whispersync/com/google/inject/spi/Element;)Ljava/lang/Void;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/util/Modules$ModuleWriter;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/spi/Element;->applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method writeAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;)V"
        }
    .end annotation

    .line 298
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/spi/Element;

    .line 299
    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/spi/Element;->acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
