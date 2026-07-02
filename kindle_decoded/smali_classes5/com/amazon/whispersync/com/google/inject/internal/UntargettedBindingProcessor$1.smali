.class Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;
.source "UntargettedBindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/UntargettedBinding;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/UntargettedBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->prepareBinding()V

    .line 43
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->missingImplementation(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 45
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;

    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->invalidBinding(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingImpl;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    return-object v0

    .line 51
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;

    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;

    iget-object v5, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->createUninitializedBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Z)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scheduleInitialization(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    .line 54
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 57
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor;

    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->invalidBinding(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingImpl;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/UntargettedBinding;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/UntargettedBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected visitOther(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic visitOther(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingProcessor$1;->visitOther(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
