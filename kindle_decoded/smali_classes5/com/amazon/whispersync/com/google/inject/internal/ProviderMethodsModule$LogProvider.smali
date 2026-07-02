.class final Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule$LogProvider;
.super Ljava/lang/Object;
.source "ProviderMethodsModule.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Ljava/util/logging/Logger;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule$LogProvider;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule$LogProvider;->get()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/logging/Logger;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule$LogProvider;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method
