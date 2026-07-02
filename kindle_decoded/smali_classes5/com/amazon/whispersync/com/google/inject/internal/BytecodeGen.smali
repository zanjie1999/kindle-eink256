.class public final Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;
.super Ljava/lang/Object;
.source "BytecodeGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;,
        Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;,
        Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$SystemBridgeHolder;
    }
.end annotation


# static fields
.field private static final CGLIB_PACKAGE:Ljava/lang/String; = " "

.field private static final CLASS_LOADER_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_LOADER_ENABLED:Z

.field static final GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

.field static final GUICE_INTERNAL_PACKAGE:Ljava/lang/String;

.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->logger:Ljava/util/logging/Logger;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.internal\\..*$"

    const-string v2, ".internal"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->GUICE_INTERNAL_PACKAGE:Ljava/lang/String;

    const-string v0, "guice.custom.loader"

    const-string/jumbo v1, "true"

    .line 122
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->CUSTOM_LOADER_ENABLED:Z

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->weakKeys()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->weakValues()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1;

    invoke-direct {v1}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->makeComputingMap(Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->CLASS_LOADER_CACHE:Ljava/util/Map;

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->CLASS_LOADER_CACHE:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->getClassLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method private static getClassLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 167
    sget-boolean v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->CUSTOM_LOADER_ENABLED:Z

    if-nez v0, :cond_0

    return-object p1

    .line 172
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-object p0

    .line 176
    :cond_1
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    .line 179
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    if-eq p1, v0, :cond_4

    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->forType(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    move-result-object p0

    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    if-ne p0, v0, :cond_4

    .line 185
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eq p1, p0, :cond_3

    .line 187
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->CLASS_LOADER_CACHE:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0

    .line 190
    :cond_3
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;

    return-object p0

    :cond_4
    :goto_0
    return-object p1
.end method
