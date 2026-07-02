.class Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory$1;
.super Ljava/lang/Object;
.source "DefaultConstructionProxyFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;->create()Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;

.field final synthetic val$constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory$1;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory$1;->val$constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;)Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v0

    return-object v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory$1;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 89
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 87
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
