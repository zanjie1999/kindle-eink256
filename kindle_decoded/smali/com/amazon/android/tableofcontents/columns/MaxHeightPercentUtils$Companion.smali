.class public final Lcom/amazon/android/tableofcontents/columns/MaxHeightPercentUtils$Companion;
.super Ljava/lang/Object;
.source "MaxHeightPercentUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/tableofcontents/columns/MaxHeightPercentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/android/tableofcontents/columns/MaxHeightPercentUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeightMeasureSpec(IIF)I
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p3, v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    const/high16 p2, -0x80000000

    .line 28
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    return p2
.end method
