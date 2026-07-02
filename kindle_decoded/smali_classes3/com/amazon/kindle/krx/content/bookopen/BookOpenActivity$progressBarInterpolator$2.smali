.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$progressBarInterpolator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BookOpenActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/animation/Interpolator;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$progressBarInterpolator$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$progressBarInterpolator$2;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$progressBarInterpolator$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$progressBarInterpolator$2;->INSTANCE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$progressBarInterpolator$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/animation/Interpolator;
    .locals 2

    .line 124
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->getProgressInterpolationType()Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 127
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 126
    :cond_1
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    goto :goto_0

    .line 125
    :cond_2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$progressBarInterpolator$2;->invoke()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method
