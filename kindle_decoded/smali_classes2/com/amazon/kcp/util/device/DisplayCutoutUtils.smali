.class public final Lcom/amazon/kcp/util/device/DisplayCutoutUtils;
.super Ljava/lang/Object;
.source "DisplayCutoutUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/device/DisplayCutoutUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->INSTANCE:Lcom/amazon/kcp/util/device/DisplayCutoutUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final centerAndRotateInsets(Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 2

    .line 136
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 137
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 138
    new-instance v1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {v1, v0, v0, p1, p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object v1
.end method

.method private final centerHorizontalInsets(Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 3

    .line 161
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 162
    new-instance v1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result p1

    invoke-direct {v1, v0, v0, v2, p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object v1
.end method

.method private final centerVerticalInsets(Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 3

    .line 149
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 150
    new-instance v1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result p1

    invoke-direct {v1, v2, p1, v0, v0}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object v1
.end method

.method public static final extendActivityIntoDisplayCutout(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string v0, "activity.window"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-void
.end method

.method public static final getDisplayCutoutSafeInsets(Landroid/app/Activity;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 7

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string v0, "activity.window"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string v0, "activity.window.decorView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    invoke-static {p0}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/view/WindowInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p0

    return-object p0

    .line 112
    :cond_0
    new-instance p0, Lcom/amazon/kcp/util/device/SafeInsets;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public static final getDisplayCutoutSafeInsets(Landroid/view/WindowInsets;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 11

    const-string/jumbo v0, "windowInsets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object v0

    .line 95
    :cond_0
    new-instance p0, Lcom/amazon/kcp/util/device/SafeInsets;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method private final getPortraitSafeInsets(Landroid/content/Context;Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 3

    const-string/jumbo v0, "window"

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/view/WindowManager;

    .line 171
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    const-string/jumbo v0, "windowService.defaultDisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v1

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v2

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result p2

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    goto :goto_0

    .line 173
    :cond_1
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v2

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result p2

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    goto :goto_0

    .line 172
    :cond_2
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v1

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result p2

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    :goto_0
    move-object p2, p1

    :goto_1
    return-object p2

    .line 169
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final getSafeInsetsForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 1

    const-string v0, "bookInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->INSTANCE:Lcom/amazon/kcp/util/device/DisplayCutoutUtils;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->centerHorizontalInsets(Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    .line 78
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->INSTANCE:Lcom/amazon/kcp/util/device/DisplayCutoutUtils;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->centerVerticalInsets(Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static final getSafeInsetsPairForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;Landroid/content/Context;Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsetsPair;
    .locals 1

    const-string v0, "bookInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeInsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->INSTANCE:Lcom/amazon/kcp/util/device/DisplayCutoutUtils;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getPortraitSafeInsets(Landroid/content/Context;Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->centerHorizontalInsets(Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    .line 63
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->INSTANCE:Lcom/amazon/kcp/util/device/DisplayCutoutUtils;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->centerVerticalInsets(Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    .line 65
    :cond_0
    sget-object p0, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->INSTANCE:Lcom/amazon/kcp/util/device/DisplayCutoutUtils;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->centerAndRotateInsets(Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p0

    .line 66
    new-instance p2, Lcom/amazon/kcp/util/device/SafeInsetsPair;

    invoke-direct {p2, p1, p0}, Lcom/amazon/kcp/util/device/SafeInsetsPair;-><init>(Lcom/amazon/kcp/util/device/SafeInsets;Lcom/amazon/kcp/util/device/SafeInsets;)V

    return-object p2
.end method

.method public static final getWindowSizeWithoutCornerNotch(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static final isCornerNotchSupportEnabled()Z
    .locals 2

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/device/NotchDetectorManager;->getDetector()Lcom/amazon/kcp/util/device/NotchDetector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/util/device/NotchDetector;->hasCornerNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isNotchSupportEnabled()Z
    .locals 2

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/device/NotchDetectorManager;->getDetector()Lcom/amazon/kcp/util/device/NotchDetector;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/util/device/NotchDetector;->hasCenterNotch()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isCornerNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
