.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$LoggerFactory;
.super Ljava/lang/Object;
.source "InjectorShell.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
        "Ljava/util/logging/Logger;",
        ">;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Ljava/util/logging/Logger;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$1;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$LoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$LoggerFactory;->get()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$LoggerFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/util/logging/Logger;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/util/logging/Logger;
    .locals 1

    .line 259
    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/util/logging/Logger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;Z)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .line 252
    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object p1

    if-nez p1, :cond_0

    .line 253
    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Provider<Logger>"

    return-object v0
.end method
