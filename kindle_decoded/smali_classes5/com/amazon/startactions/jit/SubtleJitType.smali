.class public final enum Lcom/amazon/startactions/jit/SubtleJitType;
.super Ljava/lang/Enum;
.source "SubtleJitType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/jit/SubtleJitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/jit/SubtleJitType;

.field public static final enum AUTO_SHELF_EXPERIENCE_DISABLED:Lcom/amazon/startactions/jit/SubtleJitType;

.field public static final enum AUTO_SHELF_EXPERIENCE_ENABLED:Lcom/amazon/startactions/jit/SubtleJitType;

.field public static final enum NONE:Lcom/amazon/startactions/jit/SubtleJitType;

.field public static final enum SENSITIVE_BOOK_EXPERIENCE:Lcom/amazon/startactions/jit/SubtleJitType;


# instance fields
.field public final metricName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/amazon/startactions/jit/SubtleJitType;

    const/4 v1, 0x0

    const-string v2, "AUTO_SHELF_EXPERIENCE_ENABLED"

    const-string v3, "DisplayedAutoshelfEnabledSubtleJIT"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/startactions/jit/SubtleJitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/jit/SubtleJitType;->AUTO_SHELF_EXPERIENCE_ENABLED:Lcom/amazon/startactions/jit/SubtleJitType;

    .line 11
    new-instance v0, Lcom/amazon/startactions/jit/SubtleJitType;

    const/4 v2, 0x1

    const-string v3, "AUTO_SHELF_EXPERIENCE_DISABLED"

    const-string v4, "DisplayedAutoshelfDisabledSubtleJIT"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/startactions/jit/SubtleJitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/jit/SubtleJitType;->AUTO_SHELF_EXPERIENCE_DISABLED:Lcom/amazon/startactions/jit/SubtleJitType;

    .line 12
    new-instance v0, Lcom/amazon/startactions/jit/SubtleJitType;

    const/4 v3, 0x2

    const-string v4, "SENSITIVE_BOOK_EXPERIENCE"

    const-string v5, "DisplayedSensitiveSubtleJIT"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/startactions/jit/SubtleJitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/jit/SubtleJitType;->SENSITIVE_BOOK_EXPERIENCE:Lcom/amazon/startactions/jit/SubtleJitType;

    .line 13
    new-instance v0, Lcom/amazon/startactions/jit/SubtleJitType;

    const/4 v4, 0x3

    const-string v5, "NONE"

    const-string v6, "DisplayedNoSubtleJIT"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/startactions/jit/SubtleJitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/jit/SubtleJitType;->NONE:Lcom/amazon/startactions/jit/SubtleJitType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/startactions/jit/SubtleJitType;

    .line 9
    sget-object v6, Lcom/amazon/startactions/jit/SubtleJitType;->AUTO_SHELF_EXPERIENCE_ENABLED:Lcom/amazon/startactions/jit/SubtleJitType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/startactions/jit/SubtleJitType;->AUTO_SHELF_EXPERIENCE_DISABLED:Lcom/amazon/startactions/jit/SubtleJitType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/startactions/jit/SubtleJitType;->SENSITIVE_BOOK_EXPERIENCE:Lcom/amazon/startactions/jit/SubtleJitType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/startactions/jit/SubtleJitType;->$VALUES:[Lcom/amazon/startactions/jit/SubtleJitType;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/amazon/startactions/jit/SubtleJitType;->metricName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/jit/SubtleJitType;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/startactions/jit/SubtleJitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/jit/SubtleJitType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/jit/SubtleJitType;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/startactions/jit/SubtleJitType;->$VALUES:[Lcom/amazon/startactions/jit/SubtleJitType;

    invoke-virtual {v0}, [Lcom/amazon/startactions/jit/SubtleJitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/jit/SubtleJitType;

    return-object v0
.end method
