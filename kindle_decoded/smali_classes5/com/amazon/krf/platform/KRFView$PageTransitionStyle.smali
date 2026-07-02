.class public final enum Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;
.super Ljava/lang/Enum;
.source "KRFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageTransitionStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

.field public static final enum CURL:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

.field public static final enum HORIZONTAL_SLIDE:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

.field public static final enum NONE:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 433
    new-instance v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->NONE:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    .line 438
    new-instance v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    const/4 v2, 0x1

    const-string v3, "CURL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->CURL:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    .line 443
    new-instance v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    const/4 v3, 0x2

    const-string v4, "HORIZONTAL_SLIDE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->HORIZONTAL_SLIDE:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    .line 429
    sget-object v5, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->NONE:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->CURL:Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->$VALUES:[Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 429
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromInt(I)Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;
    .locals 1

    .line 446
    invoke-static {}, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->values()[Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;
    .locals 1

    .line 429
    const-class v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;
    .locals 1

    .line 429
    sget-object v0, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->$VALUES:[Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    return-object v0
.end method
