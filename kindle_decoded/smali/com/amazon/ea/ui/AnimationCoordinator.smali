.class public Lcom/amazon/ea/ui/AnimationCoordinator;
.super Ljava/lang/Object;
.source "AnimationCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;,
        Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;,
        Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;,
        Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;,
        Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;,
        Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATOR_DURATION_MS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.AnimationCoordinator"

.field private static defaultAddAnimator:Landroid/animation/ObjectAnimator;

.field private static defaultChangeAnimator:Landroid/animation/ObjectAnimator;

.field private static defaultRemoveAnimator:Landroid/animation/ObjectAnimator;

.field private static defaultScrollAnimator:Landroid/animation/ObjectAnimator;


# instance fields
.field private animators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final collapseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private destinationFrames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private preDrawListener:Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;

.field private final rootView:Landroid/view/ViewGroup;

.field private scrollToVisible:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private showingViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 9

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->collapseListeners:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->listeners:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->showingViews:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->animators:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->destinationFrames:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible:Ljava/util/List;

    .line 83
    sget-object v0, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultChangeAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 85
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 89
    fill-array-data v3, :array_0

    const-string v4, "left"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v2, [I

    .line 90
    fill-array-data v4, :array_1

    const-string/jumbo v5, "top"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v2, [I

    .line 91
    fill-array-data v5, :array_2

    const-string/jumbo v6, "right"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v6, v2, [I

    .line 92
    fill-array-data v6, :array_3

    const-string v7, "bottom"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    aput-object v5, v7, v2

    const/4 v3, 0x3

    aput-object v6, v7, v3

    const/4 v3, 0x0

    .line 93
    invoke-static {v3, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sput-object v4, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultChangeAnimator:Landroid/animation/ObjectAnimator;

    .line 94
    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    sget-object v4, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultChangeAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v4, v2, [I

    .line 97
    fill-array-data v4, :array_4

    const-string/jumbo v7, "scrollY"

    invoke-static {v3, v7, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sput-object v4, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 98
    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    sget-object v1, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v1, v2, [F

    .line 101
    fill-array-data v1, :array_5

    const-string v4, "alpha"

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sput-object v1, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultAddAnimator:Landroid/animation/ObjectAnimator;

    .line 102
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    sget-object v1, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultAddAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v1, v2, [F

    .line 105
    fill-array-data v1, :array_6

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sput-object v1, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultRemoveAnimator:Landroid/animation/ObjectAnimator;

    .line 106
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    sget-object v0, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultRemoveAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->context:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->rootView:Landroid/view/ViewGroup;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/HashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->listeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/animation/ObjectAnimator;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultScrollAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/amazon/ea/ui/AnimationCoordinator;Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;)Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->preDrawListener:Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Set;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->showingViews:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/ea/ui/AnimationCoordinator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->animators:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->destinationFrames:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600()Landroid/animation/ObjectAnimator;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultChangeAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/view/ViewGroup;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible:Ljava/util/List;

    return-object p0
.end method

.method private animateView(Landroid/view/View;)V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    sget-object v0, Lcom/amazon/ea/ui/AnimationCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Won\'t listen to (already listening): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 307
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_4

    .line 308
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    sget-object v0, Lcom/amazon/ea/ui/AnimationCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Won\'t listen to (zero-frame): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 314
    :cond_4
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 315
    sget-object v1, Lcom/amazon/ea/ui/AnimationCoordinator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listening to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_5
    new-instance v1, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/view/View;)V

    .line 320
    iget-object v2, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->listeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 324
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->preDrawListener:Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;

    if-nez p1, :cond_6

    .line 325
    new-instance p1, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator;Lcom/amazon/ea/ui/AnimationCoordinator$1;)V

    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->preDrawListener:Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;

    .line 326
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public addCollapseListener(Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;)V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->collapseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    .line 203
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/amazon/ea/ui/AnimationCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing animated add of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 211
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->showingViews:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    sget-object p1, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultAddAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 217
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public animateLayoutChanges(Landroid/view/ViewParent;)V
    .locals 4

    .line 266
    :goto_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 267
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/amazon/ea/ui/AnimationCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing animated layout changes in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 273
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 275
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->rootView:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 284
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public collapseOthers(Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;)V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->collapseListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;

    if-eq v1, p1, :cond_0

    .line 709
    invoke-interface {v1}, Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;->collapse()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeCollapseListener(Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->collapseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeView(Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;)V
    .locals 5

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 232
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    sget-object v1, Lcom/amazon/ea/ui/AnimationCoordinator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing animated remove of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->animateLayoutChanges(Landroid/view/ViewParent;)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 241
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 243
    sget-object v1, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultRemoveAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 245
    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 246
    new-instance v2, Lcom/amazon/ea/ui/AnimationCoordinator$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/amazon/ea/ui/AnimationCoordinator$2;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/view/ViewGroup;Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 3

    .line 138
    sget-object v0, Lcom/amazon/ea/ui/AnimationCoordinator;->defaultScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 140
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 141
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public scrollToVisible(Landroid/view/View;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->listeners:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnLayoutChangeListener;

    .line 125
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->rootView:Landroid/view/ViewGroup;

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    instance-of v0, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 126
    new-instance p1, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;

    invoke-direct {p1, p0}, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->listeners:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method
