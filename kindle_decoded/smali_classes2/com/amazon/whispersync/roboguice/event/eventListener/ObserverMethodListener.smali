.class public Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;
.super Ljava/lang/Object;
.source "ObserverMethodListener.java"

# interfaces
.implements Lcom/amazon/whispersync/roboguice/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/roboguice/event/EventListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected descriptor:Ljava/lang/String;

.field protected instance:Ljava/lang/Object;

.field protected method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->instance:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->method:Ljava/lang/reflect/Method;

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amazon/whispersync/roboguice/event/eventListener/javaassist/RuntimeSupport;->makeDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->descriptor:Ljava/lang/String;

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 47
    const-class v2, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 49
    :cond_1
    check-cast p1, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;

    .line 51
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->descriptor:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->descriptor:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->instance:Ljava/lang/Object;

    iget-object p1, p1, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->instance:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :cond_6
    :goto_2
    return v0

    :cond_7
    :goto_3
    return v1
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->instance:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public onEvent(Ljava/lang/Object;)V
    .locals 4

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/event/eventListener/ObserverMethodListener;->instance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 34
    invoke-static {p1}, Lcom/amazon/whispersync/roboguice/util/Ln;->e(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
