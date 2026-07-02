.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$InjectorFactory;
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
    name = "InjectorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
        "Lcom/amazon/whispersync/com/google/inject/Injector;",
        ">;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Lcom/amazon/whispersync/com/google/inject/Injector;",
        ">;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/amazon/whispersync/com/google/inject/Injector;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/com/google/inject/Injector;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$InjectorFactory;->injector:Lcom/amazon/whispersync/com/google/inject/Injector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/Injector;Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$1;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$InjectorFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/Injector;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$InjectorFactory;->injector:Lcom/amazon/whispersync/com/google/inject/Injector;

    return-object v0
.end method

.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;Z)",
            "Lcom/amazon/whispersync/com/google/inject/Injector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 225
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$InjectorFactory;->injector:Lcom/amazon/whispersync/com/google/inject/Injector;

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$InjectorFactory;->get()Lcom/amazon/whispersync/com/google/inject/Injector;

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

    .line 216
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$InjectorFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Provider<Injector>"

    return-object v0
.end method
