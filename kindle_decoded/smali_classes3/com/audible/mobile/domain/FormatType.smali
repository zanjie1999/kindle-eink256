.class public final enum Lcom/audible/mobile/domain/FormatType;
.super Ljava/lang/Enum;
.source "FormatType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/domain/FormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/domain/FormatType;

.field public static final enum ABRIDGED:Lcom/audible/mobile/domain/FormatType;

.field public static final enum HIGHLIGHTS:Lcom/audible/mobile/domain/FormatType;

.field public static final enum NONE:Lcom/audible/mobile/domain/FormatType;

.field public static final enum ORIGINAL_RECORDING:Lcom/audible/mobile/domain/FormatType;

.field public static final enum UNABRIDGED:Lcom/audible/mobile/domain/FormatType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/audible/mobile/domain/FormatType;

    const/4 v1, 0x0

    const-string v2, "ABRIDGED"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/domain/FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/FormatType;->ABRIDGED:Lcom/audible/mobile/domain/FormatType;

    new-instance v0, Lcom/audible/mobile/domain/FormatType;

    const/4 v2, 0x1

    const-string v3, "UNABRIDGED"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/domain/FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/FormatType;->UNABRIDGED:Lcom/audible/mobile/domain/FormatType;

    new-instance v0, Lcom/audible/mobile/domain/FormatType;

    const/4 v3, 0x2

    const-string v4, "HIGHLIGHTS"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/domain/FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/FormatType;->HIGHLIGHTS:Lcom/audible/mobile/domain/FormatType;

    new-instance v0, Lcom/audible/mobile/domain/FormatType;

    const/4 v4, 0x3

    const-string v5, "ORIGINAL_RECORDING"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/domain/FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/FormatType;->ORIGINAL_RECORDING:Lcom/audible/mobile/domain/FormatType;

    new-instance v0, Lcom/audible/mobile/domain/FormatType;

    const/4 v5, 0x4

    const-string v6, "NONE"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/domain/FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/FormatType;->NONE:Lcom/audible/mobile/domain/FormatType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/mobile/domain/FormatType;

    .line 8
    sget-object v7, Lcom/audible/mobile/domain/FormatType;->ABRIDGED:Lcom/audible/mobile/domain/FormatType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/mobile/domain/FormatType;->UNABRIDGED:Lcom/audible/mobile/domain/FormatType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/mobile/domain/FormatType;->HIGHLIGHTS:Lcom/audible/mobile/domain/FormatType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/mobile/domain/FormatType;->ORIGINAL_RECORDING:Lcom/audible/mobile/domain/FormatType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/mobile/domain/FormatType;->$VALUES:[Lcom/audible/mobile/domain/FormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static safeValueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/FormatType;
    .locals 0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/audible/mobile/domain/FormatType;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/FormatType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 17
    :catch_0
    sget-object p0, Lcom/audible/mobile/domain/FormatType;->NONE:Lcom/audible/mobile/domain/FormatType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/FormatType;
    .locals 1

    .line 8
    const-class v0, Lcom/audible/mobile/domain/FormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/domain/FormatType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/domain/FormatType;
    .locals 1

    .line 8
    sget-object v0, Lcom/audible/mobile/domain/FormatType;->$VALUES:[Lcom/audible/mobile/domain/FormatType;

    invoke-virtual {v0}, [Lcom/audible/mobile/domain/FormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/domain/FormatType;

    return-object v0
.end method
