.class public final enum Lcom/amazon/krf/platform/KRFView$Orientation;
.super Ljava/lang/Enum;
.source "KRFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/KRFView$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/KRFView$Orientation;

.field public static final enum ALL:Lcom/amazon/krf/platform/KRFView$Orientation;

.field public static final enum CURRENT:Lcom/amazon/krf/platform/KRFView$Orientation;

.field public static final enum LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

.field public static final enum PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 403
    new-instance v0, Lcom/amazon/krf/platform/KRFView$Orientation;

    const/4 v1, 0x0

    const-string v2, "PORTRAIT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/KRFView$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    .line 408
    new-instance v0, Lcom/amazon/krf/platform/KRFView$Orientation;

    const/4 v2, 0x1

    const-string v3, "LANDSCAPE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/KRFView$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    .line 413
    new-instance v0, Lcom/amazon/krf/platform/KRFView$Orientation;

    const/4 v3, 0x2

    const-string v4, "ALL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/KRFView$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFView$Orientation;->ALL:Lcom/amazon/krf/platform/KRFView$Orientation;

    .line 418
    new-instance v0, Lcom/amazon/krf/platform/KRFView$Orientation;

    const/4 v4, 0x3

    const-string v5, "CURRENT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/KRFView$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/KRFView$Orientation;->CURRENT:Lcom/amazon/krf/platform/KRFView$Orientation;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/krf/platform/KRFView$Orientation;

    .line 398
    sget-object v6, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/krf/platform/KRFView$Orientation;->ALL:Lcom/amazon/krf/platform/KRFView$Orientation;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/krf/platform/KRFView$Orientation;->$VALUES:[Lcom/amazon/krf/platform/KRFView$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromInt(I)Lcom/amazon/krf/platform/KRFView$Orientation;
    .locals 1

    .line 421
    invoke-static {}, Lcom/amazon/krf/platform/KRFView$Orientation;->values()[Lcom/amazon/krf/platform/KRFView$Orientation;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/KRFView$Orientation;
    .locals 1

    .line 398
    const-class v0, Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/KRFView$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/KRFView$Orientation;
    .locals 1

    .line 398
    sget-object v0, Lcom/amazon/krf/platform/KRFView$Orientation;->$VALUES:[Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/KRFView$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/KRFView$Orientation;

    return-object v0
.end method
