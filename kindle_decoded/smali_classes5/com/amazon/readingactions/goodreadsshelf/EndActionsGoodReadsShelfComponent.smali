.class public final Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;
.super Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;
.source "EndActionsGoodReadsShelfComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$Companion;
    }
.end annotation


# static fields
.field private static final CURRENT_SHELF_KEY:Ljava/lang/String; = "EAGoodreadsShelfComponent.CURRENT_SHELF_KEY"

.field private static final HAS_INITIALIZED_THIS_END_ACTIONS_SESSION_KEY:Ljava/lang/String; = "EAGoodreadsShelfComponent.HAS_INITIALIZED_THIS_END_ACTIONS_SESSION_KEY"

.field private static final PREFERENCE_KEY_EA_BLOCKING_TUTORIAL_ENABLED:Ljava/lang/String; = "endActionsTutorialEnabled"

.field private static final SHOWING_MANUAL_SHELF_EXPERIENCE_KEY:Ljava/lang/String; = "EAGoodreadsShelfComponent.SHOWING_MANUAL_SHELF_EXPERIENCE_KEY"

.field private static final SHOWING_SUBTLE_JIT_ERROR_MESSAGE_KEY:Ljava/lang/String; = "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_ERROR_MESSAGE_KEY"

.field private static final SHOWING_SUBTLE_JIT_OFFLINE_MESSAGE_KEY:Ljava/lang/String; = "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_OFFLINE_MESSAGE_KEY"

.field private static final TUTORIAL_DISPLAY_DELAY_MS:I = 0x3c


# instance fields
.field private hasInitializedThisEndActionsSession:Z

.field private hasRendered:Z

.field private isShowingSubtleJitErrorMessage:Z

.field private isShowingSubtleJitOfflineMessage:Z

.field private jitWasShown:Z

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private subtleJITContainer:Landroid/widget/LinearLayout;

.field private final themedDropdownDividerColor:I

.field private final themedSpinnerArrow:Landroid/graphics/drawable/Drawable;

.field private final themedSpinnerSelectedBackgroundColor:I

.field private final themedTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goodReadsShelfData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goodReadsInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsTag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;-><init>(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V

    .line 56
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedTextColor:I

    .line 58
    sget p1, Lcom/amazon/kindle/ea/R$array;->readingactions_spinner_selected_background_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    .line 60
    sget p1, Lcom/amazon/kindle/ea/R$array;->readingactions_spinner_arrow:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "ThemedResourceUtil.getTh\u2026ingactions_spinner_arrow)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedSpinnerArrow:Landroid/graphics/drawable/Drawable;

    .line 62
    sget p1, Lcom/amazon/kindle/ea/R$array;->readingactions_spinner_dropdown_divider_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedDropdownDividerColor:I

    return-void
.end method

.method public static final synthetic access$getOnGlobalLayoutListener$p(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method public static final synthetic access$layoutTutorial(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->layoutTutorial(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    return-void
.end method

.method private final buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
    .locals 9

    .line 330
    invoke-direct {p0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->isTutorialEnabled()Z

    move-result v0

    .line 331
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "DisplayedBlockingJIT"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 337
    sget v2, Lcom/amazon/kindle/ea/R$layout;->endactions_autoshelving_tutorial_content:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 339
    iget-object v3, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    const/4 v5, 0x1

    const/4 v6, 0x3

    .line 342
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    const-string v1, "activityContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ea/R$dimen;->blocking_tutorial_pointer_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 343
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$color;->startactions_dialog_color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 339
    invoke-static/range {v3 .. v8}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->createInstance(Landroid/view/View;Landroid/view/View;ZIFI)Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    move-result-object v0

    const-string v1, "blockingTutorialFragment"

    .line 344
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$1;->INSTANCE:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$1;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->setBackButtonListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;)V

    .line 349
    sget-object v1, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$2;->INSTANCE:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$2;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->setOnDismissListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;)V

    .line 354
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$3;

    invoke-direct {v2, p0, v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$3;-><init>(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    const/16 v3, 0x3c

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    check-cast v1, Landroid/app/Activity;

    .line 357
    new-instance v2, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$4;-><init>(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;Landroid/app/Activity;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    iput-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 361
    iget-object v2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    const-string v3, "autoShelfSwitch"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 362
    new-instance v2, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$onScrollChangedListener$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$onScrollChangedListener$1;-><init>(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;Landroid/app/Activity;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    .line 363
    iget-object v3, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    const-string/jumbo v4, "view"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 366
    new-instance v3, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$5;

    invoke-direct {v3, p0, v2}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$5;-><init>(Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, v3}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->setJitDialogDismissListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;)V

    .line 373
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "JITT"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 375
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "ClickedJITToggle"

    invoke-virtual {v1, v2}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 376
    iput-boolean v1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->jitWasShown:Z

    return-object v0

    .line 356
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final displayErrorMessageSubtleJitIfRequired(Landroid/os/Bundle;)V
    .locals 5

    .line 289
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    const-string v1, "goodreadsInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->getUpdateFailureThatOccurredForBook(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v4, "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_ERROR_MESSAGE_KEY"

    .line 290
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    .line 293
    :cond_2
    sget p1, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_update_failed_subtle_jit_message:I

    xor-int/lit8 v0, v2, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->displaySubtleJit(IZ)V

    .line 294
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 295
    iput-boolean v3, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->isShowingSubtleJitErrorMessage:Z

    .line 297
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DisplayedErrorSubtleJIT"

    invoke-virtual {p1, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final displayOfflineSubtleJitIfRequired(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v2, "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_OFFLINE_MESSAGE_KEY"

    .line 305
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 307
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    if-nez p1, :cond_2

    .line 308
    :cond_1
    sget p1, Lcom/amazon/kindle/ea/R$string;->anyactions_widget_goodreads_offline_subtle_jit:I

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->displaySubtleJit(IZ)V

    .line 309
    iput-boolean v1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->isShowingSubtleJitOfflineMessage:Z

    .line 311
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DisplayedOfflineSubtleJIT"

    invoke-virtual {p1, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final displaySubtleJit(IZ)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->subtleJITContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/amazon/kindle/ea/R$id;->startactions_subtle_jit_message:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->subtleJITContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->displaySubtleJit(Landroid/widget/LinearLayout;Landroid/widget/TextView;Z)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method private final initiallyUseAutoShelfExperience(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "EAGoodreadsShelfComponent.SHOWING_MANUAL_SHELF_EXPERIENCE_KEY"

    .line 252
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return v0

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isUpdateShelfServiceCallInProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 266
    :cond_2
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->didEndActionsOpenAutomatically()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string/jumbo p2, "to-read"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "currently-reading"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_1
    return v0
.end method

.method private final isToggleInitiallyChecked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private final isTutorialEnabled()Z
    .locals 2

    const-string v0, "anyactions.autoshelving"

    const-string v1, "endActionsTutorialEnabled"

    .line 382
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final layoutTutorial(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->requestLayout(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final createView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subtleJITContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const-string v1, "EAGoodreadsShelfComponent.HAS_INITIALIZED_THIS_END_ACTIONS_SESSION_KEY"

    .line 84
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    :cond_0
    iput-boolean v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const-string v1, "EAGoodreadsShelfComponent.CURRENT_SHELF_KEY"

    .line 86
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_1
    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_goodreads_shelf:I

    invoke-virtual {p0, p1, p3, v1, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->initialize(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ILjava/lang/String;)V

    .line 89
    iput-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->subtleJITContainer:Landroid/widget/LinearLayout;

    .line 90
    sget p1, Lcom/amazon/kindle/ea/R$array;->anyactions_subtle_jit_background:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->manualShelfPrompt:Landroid/widget/TextView;

    iget p2, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfPrompt:Landroid/widget/TextView;

    iget p2, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfPrompt:Landroid/widget/TextView;

    const-string p2, "autoShelfPrompt"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    const-string p3, "activityContext"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ea/R$string;->endactions_widget_goodreads_shelf_auto_prompt:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    iget p2, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setBackgroundColor(I)V

    .line 96
    sget p1, Lcom/amazon/kindle/ea/R$array;->anyactions_switch_thumb:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->initializeSwitchUi(I)V

    .line 98
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-static {p1, p2}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->setOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 101
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    const-string p2, "autoShelfSwitch"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->isToggleInitiallyChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object p1

    const-string p2, "currentShelf"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->initiallyUseAutoShelfExperience(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->useAutoShelfExperience()V

    .line 105
    invoke-direct {p0, p4}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->displayOfflineSubtleJitIfRequired(Landroid/os/Bundle;)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->useManualShelfExperience()V

    .line 108
    invoke-direct {p0, p4}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->displayErrorMessageSubtleJitIfRequired(Landroid/os/Bundle;)V

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->view:Landroid/view/View;

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected getMetadataOrigin()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;
    .locals 1

    .line 420
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->EA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    return-object v0
.end method

.method protected getSpinnerDropDownView(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_spinner_dropdown_item:I

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 127
    :goto_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_spinner_dropdown_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Landroid/widget/TextView;

    .line 128
    iget v1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedTextColor:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_1

    .line 130
    iget p3, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedSpinnerSelectedBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1

    .line 132
    :cond_1
    sget p3, Lcom/amazon/kindle/ea/R$array;->readingactions_spinner_background_color:I

    invoke-static {p3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 134
    :goto_1
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_dropdown_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.r\u2026actions_dropdown_divider)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget p3, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedDropdownDividerColor:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    iget-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    const-string/jumbo p3, "shelfSelectionSpinner"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    const-string/jumbo p2, "view"

    .line 139
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 127
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getSpinnerView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/amazon/kindle/ea/R$layout;->readingactions_spinner_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 116
    :goto_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_goodreads_spinner_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.r\u2026dreads_spinner_text_view)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/ea/R$style;->readingactions_amazon_text_button_regular:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 118
    iget v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedTextColor:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    sget p2, Lcom/amazon/kindle/ea/R$id;->readingactions_goodreads_spinner_view_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.r\u2026reads_spinner_view_arrow)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->themedSpinnerArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo p2, "view"

    .line 121
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected incrementMetric(Ljava/lang/String;)V
    .locals 1

    const-string v0, "metric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    return-void
.end method

.method protected initMetrics()V
    .locals 2

    .line 397
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "AutoShelvingPerformed"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingPerformed"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingCurrentlyReading"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingWantToRead"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingRead"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 402
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingRemove"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedAutoShelfExperience"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 404
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedManualShelfExperience"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    return-void
.end method

.method protected logMetricsForCurrentExperience()V
    .locals 3

    .line 408
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "DisplayedAutoShelfExperience"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_0

    .line 411
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "DisplayedManualShelfExperience"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 201
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    const-string v1, "autoShelfSwitch"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "read"

    invoke-virtual {p0, v2, v0, v1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelf(Ljava/lang/String;ZZ)V

    .line 204
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "AutoShelvingPerformed"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onGoodreadsProfileEventReceived(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getShelf()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->isGetRequest:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "read"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->useManualShelfExperience()V

    .line 155
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->activityContext:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_widget_goodreads_shelf_marked_as_read_toast:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->handleFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->unsubscribeFromShelfManagerUpdates()V

    return-void
.end method

.method public final onRender()V
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->hasRendered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->hasRendered:Z

    .line 212
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfContainer:Landroid/view/View;

    const-string v1, "autoShelfContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->autoShelfSwitch:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$onRender$1;

    invoke-direct {v2, v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$onRender$1;-><init>(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 176
    iget-boolean v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->subscribeToShelfManagerUpdates()V

    .line 183
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    const-string v1, "goodreadsInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->getUpdateFailureThatOccurredForBook(Ljava/lang/String;)Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getLocalShelfFromShelfManager()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->updateShelfSelectionSpinner(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->handleUpdateFailureAndShowDialog(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->subscribeToShelfManagerUpdatesAndFetchRemoteShelf()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->isAutoShelfExperience()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "EAGoodreadsShelfComponent.SHOWING_MANUAL_SHELF_EXPERIENCE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    iget-boolean v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->isShowingSubtleJitErrorMessage:Z

    const-string v1, "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_ERROR_MESSAGE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    iget-boolean v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->isShowingSubtleJitOfflineMessage:Z

    const-string v1, "EAGoodreadsShelfComponent.SHOWING_SUBTLE_JIT_OFFLINE_MESSAGE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    iget-boolean v0, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->hasInitializedThisEndActionsSession:Z

    const-string v1, "EAGoodreadsShelfComponent.HAS_INITIALIZED_THIS_END_ACTIONS_SESSION_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    invoke-virtual {p0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getCurrentShelf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EAGoodreadsShelfComponent.CURRENT_SHELF_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected recordMetricsForShelfSelectionMade(Ljava/lang/String;)V
    .locals 2

    const-string v0, "newShelf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ManualShelvingPerformed"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 393
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getManualShelvingMetricsCounterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    return-void
.end method
