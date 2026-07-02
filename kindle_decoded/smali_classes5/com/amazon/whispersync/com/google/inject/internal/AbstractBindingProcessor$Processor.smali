.class abstract Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;
.super Lcom/amazon/whispersync/com/google/inject/spi/DefaultBindingTargetVisitor;
.source "AbstractBindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Processor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/spi/DefaultBindingTargetVisitor<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field final key:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

.field final source:Ljava/lang/Object;

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/spi/DefaultBindingTargetVisitor;-><init>()V

    .line 144
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    .line 145
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    .line 146
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->rawType:Ljava/lang/Class;

    .line 147
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    return-void
.end method


# virtual methods
.method protected prepareBinding()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;

    iget-object v2, v1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-static {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->makeInjectable(Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    return-void
.end method

.method protected scheduleInitialization(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "*>;)V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->addUninitializedBinding(Ljava/lang/Runnable;)V

    return-void
.end method
