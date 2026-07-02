.class public Lcom/amazon/sitb/android/transition/TransitionService;
.super Ljava/lang/Object;
.source "TransitionService.java"


# instance fields
.field private final reader:Lcom/amazon/sitb/android/ReaderActions;

.field private final transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

.field private final transitionToastFactory:Lcom/amazon/sitb/android/transition/TransitionToastFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/transition/TransitionToastFactory;Lcom/amazon/sitb/android/transition/TransitionManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/sitb/android/transition/TransitionService;->reader:Lcom/amazon/sitb/android/ReaderActions;

    .line 22
    iput-object p2, p0, Lcom/amazon/sitb/android/transition/TransitionService;->transitionToastFactory:Lcom/amazon/sitb/android/transition/TransitionToastFactory;

    .line 23
    iput-object p3, p0, Lcom/amazon/sitb/android/transition/TransitionService;->transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

    return-void
.end method


# virtual methods
.method public transitionFromFullBook(Ljava/lang/String;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionService;->reader:Lcom/amazon/sitb/android/ReaderActions;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/sitb/android/ReaderActions;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionService;->transitionToastFactory:Lcom/amazon/sitb/android/transition/TransitionToastFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/transition/TransitionToastFactory;->createSeriesToast(Lcom/amazon/kindle/krx/content/IBook;)Landroid/widget/Toast;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/amazon/sitb/android/transition/TransitionService;->transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/sitb/android/transition/TransitionManager;->createTransition(Lcom/amazon/kindle/krx/content/IBook;Landroid/widget/Toast;)Lcom/amazon/sitb/android/transition/Transition;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/amazon/sitb/android/transition/Transition;->execute()V

    return-void
.end method

.method public transitionFromSample(Ljava/lang/String;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionService;->reader:Lcom/amazon/sitb/android/ReaderActions;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/sitb/android/ReaderActions;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionService;->transitionToastFactory:Lcom/amazon/sitb/android/transition/TransitionToastFactory;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/transition/TransitionToastFactory;->createSampleToast()Landroid/widget/Toast;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/amazon/sitb/android/transition/TransitionService;->transitionManager:Lcom/amazon/sitb/android/transition/TransitionManager;

    iget-object v2, p0, Lcom/amazon/sitb/android/transition/TransitionService;->reader:Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/ReaderActions;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/amazon/sitb/android/transition/TransitionManager;->createSampleTransition(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/widget/Toast;)Lcom/amazon/sitb/android/transition/Transition;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/amazon/sitb/android/transition/Transition;->execute()V

    return-void
.end method
