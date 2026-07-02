.class public final Lcom/amazon/kindle/displaymask/DisplayMaskActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "FoldableDebug.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final garbageCollectedMaybe:Lcom/amazon/kindle/displaymask/DisplayMaskActivity$garbageCollectedMaybe$1;

.field public textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity$garbageCollectedMaybe$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/displaymask/DisplayMaskActivity$garbageCollectedMaybe$1;-><init>(Lcom/amazon/kindle/displaymask/DisplayMaskActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->garbageCollectedMaybe:Lcom/amazon/kindle/displaymask/DisplayMaskActivity$garbageCollectedMaybe$1;

    return-void
.end method

.method public static final synthetic access$updateTextViewText(Lcom/amazon/kindle/displaymask/DisplayMaskActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->updateTextViewText()V

    return-void
.end method

.method private final getTheOldContentViewarino()Landroid/view/View;
    .locals 2

    .line 90
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->textView:Landroid/widget/TextView;

    .line 94
    invoke-direct {p0}, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->updateTextViewText()V

    .line 96
    iget-object v1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_0
    const-string v0, "textView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final updateTextViewText()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non functional areas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "textView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getTextView()Landroid/widget/TextView;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "textView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->getTheOldContentViewarino()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 86
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->garbageCollectedMaybe:Lcom/amazon/kindle/displaymask/DisplayMaskActivity$garbageCollectedMaybe$1;

    invoke-interface {p1, p0, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->addScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V

    return-void
.end method

.method public final setTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->textView:Landroid/widget/TextView;

    return-void
.end method
