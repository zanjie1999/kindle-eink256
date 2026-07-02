.class Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore$1;
.super Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;
.source "ConstructorInjectorStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/FailableCache<",
        "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
        "Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;

    invoke-static {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic create(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore$1;->create(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object p1

    return-object p1
.end method
