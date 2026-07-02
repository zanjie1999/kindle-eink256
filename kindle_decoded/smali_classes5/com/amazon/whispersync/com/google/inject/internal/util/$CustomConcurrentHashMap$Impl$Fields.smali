.class Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fields"
.end annotation


# static fields
.field static final loadFactor:Ljava/lang/reflect/Field;

.field static final segmentMask:Ljava/lang/reflect/Field;

.field static final segmentShift:Ljava/lang/reflect/Field;

.field static final segments:Ljava/lang/reflect/Field;

.field static final strategy:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "loadFactor"

    .line 1897
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->loadFactor:Ljava/lang/reflect/Field;

    const-string/jumbo v0, "segmentShift"

    .line 1898
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->segmentShift:Ljava/lang/reflect/Field;

    const-string/jumbo v0, "segmentMask"

    .line 1899
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->segmentMask:Ljava/lang/reflect/Field;

    const-string/jumbo v0, "segments"

    .line 1900
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->segments:Ljava/lang/reflect/Field;

    const-string/jumbo v0, "strategy"

    .line 1901
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Fields;->strategy:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    .line 1905
    :try_start_0
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 1906
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1909
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
