.class public Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;
.super Ljava/lang/Object;
.source "SystemPropertiesWrapper.java"


# instance fields
.field private final mReflectionHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

.field private final mSystemProperties:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->mReflectionHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    .line 11
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->getSystemProperties()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->mSystemProperties:Ljava/lang/Class;

    return-void
.end method

.method private getHiddenMethodOrThrow(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->mReflectionHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->mSystemProperties:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;->getHiddenMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 118
    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Hidden method: %s is not accessible"

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/messaging/odot/webservices/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private getSystemProperties()Ljava/lang/Class;
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->mReflectionHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;->getHiddenClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    const-class v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Hidden class: %s is not accessible"

    invoke-static {v0, v2, v1, v3}, Lcom/amazon/messaging/odot/webservices/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private varargs invokeHiddenMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->mReflectionHelper:Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;

    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->getHiddenMethodOrThrow(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/amazon/messaging/odot/webservices/util/ReflectionHelper;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-nez p2, :cond_1

    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Error;

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 111
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Unknown checked exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :catch_1
    move-exception p2

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "get"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/amazon/messaging/odot/webservices/util/SystemPropertiesWrapper;->invokeHiddenMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
