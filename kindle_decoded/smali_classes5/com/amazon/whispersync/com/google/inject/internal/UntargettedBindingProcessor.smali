.class Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;
.source "UntargettedBindingProcessor.java"


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;

    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binding;->acceptTargetVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
