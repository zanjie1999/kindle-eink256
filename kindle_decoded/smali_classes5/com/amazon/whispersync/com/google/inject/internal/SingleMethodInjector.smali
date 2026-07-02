.class final Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;
.super Ljava/lang/Object;
.source "SingleMethodInjector.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;


# instance fields
.field private final injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

.field private final methodInvoker:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$MethodInvoker;

.field private final parameterInjectors:[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    .line 37
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 38
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;->createMethodInvoker(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$MethodInvoker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;->methodInvoker:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$MethodInvoker;

    .line 39
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getParametersInjectors(Ljava/util/List;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;->parameterInjectors:[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;

    return-void
.end method

.method private createMethodInvoker(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$MethodInvoker;
    .locals 2

    .line 45
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 46
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    .line 63
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 68
    :cond_2
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method public inject(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Ljava/lang/Object;)V
    .locals 1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;->parameterInjectors:[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;

    invoke-static {p1, p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->getAll(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;)[Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;->methodInvoker:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$MethodInvoker;

    invoke-interface {v0, p3, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$MethodInvoker;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 94
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 97
    :cond_0
    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/SingleMethodInjector;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInjectingMethod(Ljava/lang/Throwable;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 92
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p2

    .line 85
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-void
.end method
