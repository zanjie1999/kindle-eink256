.class Lcom/amazon/device/ads/LayoutFactory;
.super Ljava/lang/Object;
.source "LayoutFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/LayoutFactory$LayoutType;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/device/ads/LayoutFactory$1;->$SwitchMap$com$amazon$device$ads$LayoutFactory$LayoutType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 29
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 22
    :cond_1
    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method
