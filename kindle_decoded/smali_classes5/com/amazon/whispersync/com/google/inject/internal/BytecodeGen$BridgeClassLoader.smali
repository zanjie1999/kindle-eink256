.class Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;
.super Ljava/lang/ClassLoader;
.source "BytecodeGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BridgeClassLoader"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method classicLoadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 334
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "sun.reflect"

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;->classicLoadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 312
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->GUICE_INTERNAL_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    :cond_1
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    if-nez v0, :cond_2

    .line 315
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;->classicLoadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 318
    :cond_2
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v0

    .line 328
    :catchall_0
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;->classicLoadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
