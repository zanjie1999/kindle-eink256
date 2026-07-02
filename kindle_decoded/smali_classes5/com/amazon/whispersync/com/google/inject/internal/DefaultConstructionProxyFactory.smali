.class final Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;
.super Ljava/lang/Object;
.source "DefaultConstructionProxyFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxyFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxyFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;)Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    return-object p0
.end method


# virtual methods
.method public create()Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy<",
            "TT;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 49
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 82
    :cond_1
    :goto_0
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;Ljava/lang/reflect/Constructor;)V

    return-object v1
.end method
