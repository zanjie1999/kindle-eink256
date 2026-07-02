.class public final enum Lcom/audible/hushpuppy/common/upsell/StoreSource;
.super Ljava/lang/Enum;
.source "StoreSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/upsell/StoreSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/upsell/StoreSource;

.field public static final enum MATCHMAKER:Lcom/audible/hushpuppy/common/upsell/StoreSource;

.field public static final enum START_ACTIONS:Lcom/audible/hushpuppy/common/upsell/StoreSource;

.field public static final enum UNKNOWN:Lcom/audible/hushpuppy/common/upsell/StoreSource;

.field public static final enum UPGRADER:Lcom/audible/hushpuppy/common/upsell/StoreSource;

.field public static final enum UPSELL:Lcom/audible/hushpuppy/common/upsell/StoreSource;


# instance fields
.field private final sourceCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;

    const/4 v1, 0x0

    const-string v2, "UPSELL"

    const-string v3, "reader_hp_upsell"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/hushpuppy/common/upsell/StoreSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UPSELL:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    .line 15
    new-instance v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;

    const-string v2, "unknown"

    const/4 v3, 0x1

    const-string v4, "START_ACTIONS"

    invoke-direct {v0, v4, v3, v2}, Lcom/audible/hushpuppy/common/upsell/StoreSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;->START_ACTIONS:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    .line 17
    new-instance v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;

    const/4 v4, 0x2

    const-string v5, "UPGRADER"

    const-string v6, "reader_lefnav_upsell"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/hushpuppy/common/upsell/StoreSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UPGRADER:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    .line 20
    new-instance v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;

    const/4 v5, 0x3

    const-string v6, "MATCHMAKER"

    const-string v7, "ktos_library_hushpuppy"

    invoke-direct {v0, v6, v5, v7}, Lcom/audible/hushpuppy/common/upsell/StoreSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;->MATCHMAKER:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    .line 22
    new-instance v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;

    const/4 v6, 0x4

    const-string v7, "UNKNOWN"

    invoke-direct {v0, v7, v6, v2}, Lcom/audible/hushpuppy/common/upsell/StoreSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UNKNOWN:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/audible/hushpuppy/common/upsell/StoreSource;

    .line 10
    sget-object v7, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UPSELL:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    aput-object v7, v2, v1

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StoreSource;->START_ACTIONS:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    aput-object v1, v2, v3

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UPGRADER:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    aput-object v1, v2, v4

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StoreSource;->MATCHMAKER:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    sput-object v2, Lcom/audible/hushpuppy/common/upsell/StoreSource;->$VALUES:[Lcom/audible/hushpuppy/common/upsell/StoreSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/audible/hushpuppy/common/upsell/StoreSource;->sourceCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/upsell/StoreSource;
    .locals 1

    .line 10
    const-class v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/upsell/StoreSource;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/upsell/StoreSource;
    .locals 1

    .line 10
    sget-object v0, Lcom/audible/hushpuppy/common/upsell/StoreSource;->$VALUES:[Lcom/audible/hushpuppy/common/upsell/StoreSource;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/upsell/StoreSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/upsell/StoreSource;

    return-object v0
.end method


# virtual methods
.method public getSourceCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/audible/hushpuppy/common/upsell/StoreSource;->sourceCode:Ljava/lang/String;

    return-object v0
.end method
