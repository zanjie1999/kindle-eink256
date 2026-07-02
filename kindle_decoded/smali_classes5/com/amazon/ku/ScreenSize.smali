.class public final enum Lcom/amazon/ku/ScreenSize;
.super Ljava/lang/Enum;
.source "ScreenSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ku/ScreenSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ku/ScreenSize;

.field public static final enum LARGE:Lcom/amazon/ku/ScreenSize;

.field public static final enum NORMAL:Lcom/amazon/ku/ScreenSize;

.field public static final enum XLARGE:Lcom/amazon/ku/ScreenSize;


# instance fields
.field private final minWidthInDp:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/amazon/ku/ScreenSize;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/ku/ScreenSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/ku/ScreenSize;->NORMAL:Lcom/amazon/ku/ScreenSize;

    .line 13
    new-instance v0, Lcom/amazon/ku/ScreenSize;

    const/4 v2, 0x1

    const-string v3, "LARGE"

    const/16 v4, 0x1e0

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ku/ScreenSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/ku/ScreenSize;->LARGE:Lcom/amazon/ku/ScreenSize;

    .line 14
    new-instance v0, Lcom/amazon/ku/ScreenSize;

    const/4 v3, 0x2

    const-string v4, "XLARGE"

    const/16 v5, 0x300

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ku/ScreenSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/ku/ScreenSize;->XLARGE:Lcom/amazon/ku/ScreenSize;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ku/ScreenSize;

    .line 11
    sget-object v5, Lcom/amazon/ku/ScreenSize;->NORMAL:Lcom/amazon/ku/ScreenSize;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ku/ScreenSize;->LARGE:Lcom/amazon/ku/ScreenSize;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ku/ScreenSize;->$VALUES:[Lcom/amazon/ku/ScreenSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/amazon/ku/ScreenSize;->minWidthInDp:I

    return-void
.end method

.method public static getScreenSize()Lcom/amazon/ku/ScreenSize;
    .locals 6

    .line 29
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 32
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    :goto_0
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 38
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 39
    sget-object v2, Lcom/amazon/ku/ScreenSize;->LARGE:Lcom/amazon/ku/ScreenSize;

    iget v3, v2, Lcom/amazon/ku/ScreenSize;->minWidthInDp:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    if-ge v0, v3, :cond_1

    .line 40
    sget-object v0, Lcom/amazon/ku/ScreenSize;->NORMAL:Lcom/amazon/ku/ScreenSize;

    return-object v0

    .line 41
    :cond_1
    sget-object v3, Lcom/amazon/ku/ScreenSize;->XLARGE:Lcom/amazon/ku/ScreenSize;

    iget v5, v3, Lcom/amazon/ku/ScreenSize;->minWidthInDp:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v5, v4

    float-to-int v1, v5

    if-ge v0, v1, :cond_2

    return-object v2

    :cond_2
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ku/ScreenSize;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/ku/ScreenSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ku/ScreenSize;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ku/ScreenSize;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/ku/ScreenSize;->$VALUES:[Lcom/amazon/ku/ScreenSize;

    invoke-virtual {v0}, [Lcom/amazon/ku/ScreenSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ku/ScreenSize;

    return-object v0
.end method
