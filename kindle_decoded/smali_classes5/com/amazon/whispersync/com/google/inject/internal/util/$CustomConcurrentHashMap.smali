.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleStrategy;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingImpl;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 125
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap;->rehash(I)I

    move-result p0

    return p0
.end method

.method private static rehash(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method
