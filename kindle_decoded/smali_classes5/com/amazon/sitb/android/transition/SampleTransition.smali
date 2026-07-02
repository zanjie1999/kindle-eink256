.class public Lcom/amazon/sitb/android/transition/SampleTransition;
.super Lcom/amazon/sitb/android/transition/Transition;
.source "SampleTransition.java"


# instance fields
.field private final excerpt:Ljava/lang/String;

.field private final excerptMatchingService:Lcom/amazon/sitb/android/transition/ExcerptMatchingService;

.field private final excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/transition/TransitionManager;Lcom/amazon/sitb/android/transition/ExcerptService;Lcom/amazon/sitb/android/transition/ExcerptMatchingService;Landroid/widget/Toast;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/amazon/sitb/android/transition/Transition;-><init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/transition/TransitionManager;Landroid/widget/Toast;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 32
    iput-object p3, p0, Lcom/amazon/sitb/android/transition/SampleTransition;->excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

    .line 33
    iput-object p4, p0, Lcom/amazon/sitb/android/transition/SampleTransition;->excerptMatchingService:Lcom/amazon/sitb/android/transition/ExcerptMatchingService;

    .line 34
    iput-object p8, p0, Lcom/amazon/sitb/android/transition/SampleTransition;->excerpt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected transitioning()V
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/SampleTransition;->excerptService:Lcom/amazon/sitb/android/transition/ExcerptService;

    iget-object v1, p0, Lcom/amazon/sitb/android/transition/Transition;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/transition/ExcerptService;->getExcerpt(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/amazon/sitb/android/transition/Transition;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/amazon/sitb/android/transition/SampleTransition;->excerptMatchingService:Lcom/amazon/sitb/android/transition/ExcerptMatchingService;

    iget-object v3, p0, Lcom/amazon/sitb/android/transition/SampleTransition;->excerpt:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/amazon/sitb/android/transition/ExcerptMatchingService;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 44
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/Transition;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/sitb/android/transition/Transition;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v3, :cond_0

    const-string v3, "<unknown>"

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    aput-object v3, v2, v4

    const-string v3, "Transitioning excerpts match, moving to sample position %s"

    .line 44
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/Transition;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPositionNoWaypoint(Lcom/amazon/kindle/krx/reader/IPosition;)V

    goto :goto_1

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/amazon/sitb/android/transition/Transition;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/sitb/android/transition/SampleTransition;->excerpt:Ljava/lang/String;

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    const-string v0, "Transitioning excerpts don\'t match, moving to start position (sample: \'%s\', full book: \'%s\')"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 51
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getStartReadingPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPositionNoWaypoint(Lcom/amazon/kindle/krx/reader/IPosition;)V

    :goto_1
    return-void
.end method
