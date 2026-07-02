.class public final Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider;
.super Ljava/lang/Object;
.source "RLROpenAnimationProvider.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setTransitionListener(Landroid/transition/Transition;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    new-instance v0, Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider$setTransitionListener$1;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/releaselicense/RLROpenAnimationProvider$setTransitionListener$1;-><init>(Landroid/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
