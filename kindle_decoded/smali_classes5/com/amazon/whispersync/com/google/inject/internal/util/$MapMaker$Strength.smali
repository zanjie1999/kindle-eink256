.class abstract enum Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

.field public static final enum SOFT:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

.field public static final enum STRONG:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

.field public static final enum WEAK:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 298
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength$1;

    const/4 v1, 0x0

    const-string v2, "WEAK"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->WEAK:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    .line 327
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength$2;

    const/4 v2, 0x1

    const-string v3, "SOFT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->SOFT:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    .line 356
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength$3;

    const/4 v3, 0x2

    const-string v4, "STRONG"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->STRONG:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    .line 297
    sget-object v5, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->WEAK:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->SOFT:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$1;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;
    .locals 1

    .line 297
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;
    .locals 1

    .line 297
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    return-object v0
.end method


# virtual methods
.method abstract copyEntry(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract equal(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method abstract hash(Ljava/lang/Object;)I
.end method

.method abstract newEntry(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals<",
            "TK;TV;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;>;TK;I",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract referenceValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;TV;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end method
