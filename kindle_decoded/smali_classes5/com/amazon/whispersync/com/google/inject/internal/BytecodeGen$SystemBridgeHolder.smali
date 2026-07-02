.class Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$SystemBridgeHolder;
.super Ljava/lang/Object;
.source "BytecodeGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemBridgeHolder"
.end annotation


# static fields
.field static final SYSTEM_BRIDGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$BridgeClassLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
