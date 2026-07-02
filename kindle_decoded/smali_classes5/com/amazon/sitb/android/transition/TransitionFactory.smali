.class public Lcom/amazon/sitb/android/transition/TransitionFactory;
.super Ljava/lang/Object;
.source "TransitionFactory.java"


# instance fields
.field private final excerptMatchingService:Lcom/amazon/sitb/android/transition/ExcerptMatchingService;

.field private final excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

.field private final readerManader:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/transition/ExcerptService;Lcom/amazon/sitb/android/transition/ExcerptMatchingService;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/sitb/android/transition/TransitionFactory;->readerManader:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 26
    iput-object p2, p0, Lcom/amazon/sitb/android/transition/TransitionFactory;->excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

    .line 27
    iput-object p3, p0, Lcom/amazon/sitb/android/transition/TransitionFactory;->excerptMatchingService:Lcom/amazon/sitb/android/transition/ExcerptMatchingService;

    return-void
.end method


# virtual methods
.method public createSampleTransition(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/widget/Toast;Ljava/lang/String;)Lcom/amazon/sitb/android/transition/Transition;
    .locals 10

    .line 32
    new-instance v9, Lcom/amazon/sitb/android/transition/SampleTransition;

    iget-object v1, p0, Lcom/amazon/sitb/android/transition/TransitionFactory;->readerManader:Lcom/amazon/kindle/krx/reader/IReaderManager;

    iget-object v2, p0, Lcom/amazon/sitb/android/transition/TransitionFactory;->transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

    iget-object v3, p0, Lcom/amazon/sitb/android/transition/TransitionFactory;->excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

    iget-object v4, p0, Lcom/amazon/sitb/android/transition/TransitionFactory;->excerptMatchingService:Lcom/amazon/sitb/android/transition/ExcerptMatchingService;

    move-object v0, v9

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/amazon/sitb/android/transition/SampleTransition;-><init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/transition/TransitionManager;Lcom/amazon/sitb/android/transition/ExcerptService;Lcom/amazon/sitb/android/transition/ExcerptMatchingService;Landroid/widget/Toast;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;)V

    return-object v9
.end method

.method public createTransition(Lcom/amazon/kindle/krx/content/IBook;Landroid/widget/Toast;)Lcom/amazon/sitb/android/transition/Transition;
    .locals 3

    .line 44
    new-instance v0, Lcom/amazon/sitb/android/transition/FullBookTransition;

    iget-object v1, p0, Lcom/amazon/sitb/android/transition/TransitionFactory;->readerManader:Lcom/amazon/kindle/krx/reader/IReaderManager;

    iget-object v2, p0, Lcom/amazon/sitb/android/transition/TransitionFactory;->transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/amazon/sitb/android/transition/FullBookTransition;-><init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/transition/TransitionManager;Landroid/widget/Toast;Lcom/amazon/kindle/krx/content/IBook;)V

    return-object v0
.end method

.method public setTransitionManager(Lcom/amazon/sitb/android/transition/TransitionManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/sitb/android/transition/TransitionFactory;->transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

    return-void
.end method
