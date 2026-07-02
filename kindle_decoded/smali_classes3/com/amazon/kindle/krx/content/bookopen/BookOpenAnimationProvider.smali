.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;
.super Ljava/lang/Object;
.source "BookOpenAnimationProvider.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;->INSTANCE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMissingCoverAnimation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Landroid/view/animation/Animation;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget v0, Lcom/amazon/kindle/krxsdk/R$anim;->book_open_cover_animation:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider$getMissingCoverAnimation$1;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider$getMissingCoverAnimation$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-string p1, "animation"

    .line 64
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setTransitionListener(Landroid/transition/Transition;Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 1

    const-string v0, "sharedElementTransition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider$setTransitionListener$1;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider$setTransitionListener$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method
