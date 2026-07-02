.class public Lcom/amazon/sitb/android/transition/SampleTransitionTaskFactory;
.super Ljava/lang/Object;
.source "SampleTransitionTaskFactory.java"

# interfaces
.implements Lcom/amazon/sitb/android/transition/TransitionTaskFactory;


# instance fields
.field private final transitionService:Lcom/amazon/sitb/android/transition/TransitionService;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/transition/TransitionService;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/sitb/android/transition/SampleTransitionTaskFactory;->transitionService:Lcom/amazon/sitb/android/transition/TransitionService;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/transition/SampleTransitionTaskFactory;)Lcom/amazon/sitb/android/transition/TransitionService;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/amazon/sitb/android/transition/SampleTransitionTaskFactory;->transitionService:Lcom/amazon/sitb/android/transition/TransitionService;

    return-object p0
.end method


# virtual methods
.method public createTransitionTask(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/sitb/android/transition/SampleTransitionTaskFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/sitb/android/transition/SampleTransitionTaskFactory$1;-><init>(Lcom/amazon/sitb/android/transition/SampleTransitionTaskFactory;Ljava/lang/String;)V

    return-object v0
.end method
