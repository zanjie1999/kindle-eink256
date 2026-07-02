.class public Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;
.super Ljava/lang/Object;
.source "ReaderTransitionChoreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final USE_DEBUG_LISTENERS:Z

.field private final animationListener:Landroid/animation/Animator$AnimatorListener;

.field private cleanupRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final finishListener:Landroid/animation/Animator$AnimatorListener;

.field private isFinishing:Z

.field private volatile isStarted:Z

.field private final listener:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;

.field private numActiveAnimations:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->USE_DEBUG_LISTENERS:Z

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->isFinishing:Z

    .line 35
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->isStarted:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->cleanupRunnables:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;-><init>(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->animationListener:Landroid/animation/Animator$AnimatorListener;

    .line 119
    new-instance v0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$2;-><init>(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->finishListener:Landroid/animation/Animator$AnimatorListener;

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->listener:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->numActiveAnimations:I

    return p0
.end method

.method static synthetic access$008(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->numActiveAnimations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->numActiveAnimations:I

    return v0
.end method

.method static synthetic access$010(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->numActiveAnimations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->numActiveAnimations:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->isStarted:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->isStarted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->finishTransition()V

    return-void
.end method

.method private finishTransition()V
    .locals 2

    .line 144
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->isFinishing:Z

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->TAG:Ljava/lang/String;

    const-string v1, "Trying to finish an already finished transition. Ignoring."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->isFinishing:Z

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->listener:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;

    invoke-interface {v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;->finishTransition()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->cleanupAnimation()V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->finishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method


# virtual methods
.method public addCleanupRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->cleanupRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTransitionAnimation(Landroid/view/ViewPropertyAnimator;Ljava/lang/String;)V
    .locals 0

    .line 61
    iget-boolean p2, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->isFinishing:Z

    if-eqz p2, :cond_0

    .line 62
    sget-object p1, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->TAG:Ljava/lang/String;

    const-string p2, "Trying to add animation when we\'re finished or finishing.  Ignoring..."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->animationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected cleanupAnimation()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->cleanupRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 164
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->cleanupRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected onTransitionStart()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->listener:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;->onTransitionStart(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    return-void
.end method
