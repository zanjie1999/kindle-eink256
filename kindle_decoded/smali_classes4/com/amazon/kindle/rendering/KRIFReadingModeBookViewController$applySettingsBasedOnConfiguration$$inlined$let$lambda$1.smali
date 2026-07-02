.class public final Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "KRIFReadingModeBookViewController.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->applySettingsBasedOnConfiguration(Landroid/content/res/Configuration;ZLcom/amazon/krf/platform/Position;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $forceApply$inlined:Z

.field final synthetic $isLandscapeSettingChanged$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $isPortraitSettingChanged$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $it:Landroid/view/ViewGroup;

.field final synthetic $newConfig$inlined:Landroid/content/res/Configuration;

.field final synthetic $position$inlined:Lcom/amazon/krf/platform/Position;

.field final synthetic $self:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;ZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/res/Configuration;Lcom/amazon/krf/platform/Position;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$it:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$self:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    iput-boolean p4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$forceApply$inlined:Z

    iput-object p5, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$isPortraitSettingChanged$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p6, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$isLandscapeSettingChanged$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p7, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$newConfig$inlined:Landroid/content/res/Configuration;

    iput-object p8, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$position$inlined:Lcom/amazon/krf/platform/Position;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 343
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMKRFViewValid$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$it:Landroid/view/ViewGroup;

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$it:Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$it:Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 347
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$it:Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$it:Landroid/view/ViewGroup;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$it:Landroid/view/ViewGroup;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v0, :cond_a

    if-gtz v2, :cond_1

    goto/16 :goto_1

    .line 351
    :cond_1
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$it:Landroid/view/ViewGroup;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 352
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 353
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 354
    iget-boolean v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$forceApply$inlined:Z

    const/4 v5, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v4}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMPortraitViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings;->getWidth()I

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v4}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMPortraitViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 355
    :cond_2
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v4}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMPortraitViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/amazon/krf/platform/ViewSettings;->setWidth(I)V

    .line 356
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v4}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMPortraitViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/amazon/krf/platform/ViewSettings;->setHeight(I)V

    .line 357
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$isPortraitSettingChanged$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 360
    :cond_3
    iget-boolean v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$forceApply$inlined:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v4}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMLandscapeViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v4}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMLandscapeViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/krf/platform/ViewSettings;->getHeight()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 361
    :cond_4
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v4}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMLandscapeViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/amazon/krf/platform/ViewSettings;->setWidth(I)V

    .line 362
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v3}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMLandscapeViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/amazon/krf/platform/ViewSettings;->setHeight(I)V

    .line 363
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$isLandscapeSettingChanged$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v5, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 366
    :cond_5
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$newConfig$inlined:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMPortraitViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMLandscapeViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    .line 367
    :goto_0
    invoke-virtual {v1, v0}, Lcom/amazon/krf/platform/ViewSettings;->setWidth(I)V

    .line 368
    invoke-virtual {v1, v2}, Lcom/amazon/krf/platform/ViewSettings;->setHeight(I)V

    .line 370
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    sget-object v2, Lcom/amazon/krf/platform/KRFView$Orientation;->CURRENT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$setKRFViewSettings(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    .line 374
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMKRFView$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$position$inlined:Lcom/amazon/krf/platform/Position;

    if-eqz v0, :cond_8

    .line 376
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMKRFView$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v2}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMKRFBook$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/KRFBook;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$position$inlined:Lcom/amazon/krf/platform/Position;

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/krf/platform/KRFView;->setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)V

    .line 377
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMKRFView$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMReadingRulerSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ReadingRulerSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFView;->setReadingRulerSettings(Lcom/amazon/krf/platform/ReadingRulerSettings;)V

    .line 378
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMKRFView$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/rendering/KRFContentUIEventHandler;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v2}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMPageChangeDelegate$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/rendering/KRFContentUIEventHandler;-><init>(Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;)V

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFView;->setDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V

    .line 379
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMUserSettingsController$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMKRIFBookItem$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/kindle/rendering/KRIFBookItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/KRIFUtils;->shouldEnableAccessibilityPageTurnSupport(Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 380
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMKRFView$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/amazon/krf/platform/KRFView;->setAccessibilityPageTurnSupport(Z)V

    .line 381
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMKRFView$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->TEXT_WITH_EXTRA_INFO:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFView;->setContentAccessibilityVerbosity(Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;)V

    .line 384
    :cond_7
    new-instance v0, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;

    sget-object v1, Lcom/amazon/kindle/recaps/TtsStateControl;->INIT_TTS:Lcom/amazon/kindle/recaps/TtsStateControl;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$self:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;-><init>(Lcom/amazon/kindle/recaps/TtsStateControl;Lcom/amazon/kindle/contentprovider/TtsBookBridge;)V

    .line 385
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMessageQueue$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 388
    :cond_8
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$isLandscapeSettingChanged$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMLandscapeViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    sget-object v2, Lcom/amazon/krf/platform/KRFView$Orientation;->LANDSCAPE:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$setKRFViewSettings(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    .line 389
    :cond_9
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->$isPortraitSettingChanged$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$applySettingsBasedOnConfiguration$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$getMPortraitViewSettings$p(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1

    sget-object v2, Lcom/amazon/krf/platform/KRFView$Orientation;->PORTRAIT:Lcom/amazon/krf/platform/KRFView$Orientation;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$setKRFViewSettings(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V

    :cond_a
    :goto_1
    return-void
.end method
