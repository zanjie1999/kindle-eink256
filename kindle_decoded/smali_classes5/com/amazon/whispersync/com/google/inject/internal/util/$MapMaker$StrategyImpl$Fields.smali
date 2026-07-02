.class Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fields"
.end annotation


# static fields
.field static final expirationNanos:Ljava/lang/reflect/Field;

.field static final internals:Ljava/lang/reflect/Field;

.field static final keyStrength:Ljava/lang/reflect/Field;

.field static final map:Ljava/lang/reflect/Field;

.field static final valueStrength:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "keyStrength"

    .line 675
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->keyStrength:Ljava/lang/reflect/Field;

    const-string/jumbo v0, "valueStrength"

    .line 676
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->valueStrength:Ljava/lang/reflect/Field;

    const-string v0, "expirationNanos"

    .line 677
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->expirationNanos:Ljava/lang/reflect/Field;

    const-string v0, "internals"

    .line 678
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->internals:Ljava/lang/reflect/Field;

    const-string v0, "map"

    .line 679
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$Fields;->map:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    .line 683
    :try_start_0
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 684
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 687
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
