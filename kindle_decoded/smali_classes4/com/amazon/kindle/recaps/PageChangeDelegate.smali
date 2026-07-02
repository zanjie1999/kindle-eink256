.class public final Lcom/amazon/kindle/recaps/PageChangeDelegate;
.super Ljava/lang/Object;
.source "PageChangeDelegate.kt"

# interfaces
.implements Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageChangeDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageChangeDelegate.kt\ncom/amazon/kindle/recaps/PageChangeDelegate\n*L\n1#1,94:1\n*E\n"
.end annotation


# instance fields
.field private mRecapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

.field private mSourceActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/recaps/activity/RecapsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private maxVisitedPosition:I

.field private minVisitedPosition:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/recaps/activity/RecapsActivity;",
            ">;",
            "Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;",
            ")V"
        }
    .end annotation

    const-string v0, "sourceActivityReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recapsLastReadPositionModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 16
    iput v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->minVisitedPosition:I

    const/high16 v0, -0x80000000

    .line 18
    iput v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->maxVisitedPosition:I

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mSourceActivityReference:Ljava/lang/ref/WeakReference;

    .line 24
    iput-object p2, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mRecapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    return-void
.end method


# virtual methods
.method public final getMaxVisitedPosition()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->maxVisitedPosition:I

    return v0
.end method

.method public final getMinVisitedPosition()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->minVisitedPosition:I

    return v0
.end method

.method public onBookContentTapped()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mSourceActivityReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->changeScreenReaderFocusToBackButton()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "mSourceActivityReference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public updateBookView(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mSourceActivityReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->updateBookView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "mSourceActivityReference"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public updateChapterName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "chapterName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mSourceActivityReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    if-eqz v0, :cond_0

    .line 29
    new-instance v1, Lcom/amazon/kindle/recaps/PageChangeDelegate$updateChapterName$1;

    invoke-direct {v1, v0, p1}, Lcom/amazon/kindle/recaps/PageChangeDelegate$updateChapterName$1;-><init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "mSourceActivityReference"

    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public updateLastPositionReadInformation(IILcom/amazon/kindle/krx/reader/ITableOfContents;I)V
    .locals 7

    .line 36
    iget v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->minVisitedPosition:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->minVisitedPosition:I

    .line 37
    iget v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->maxVisitedPosition:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->maxVisitedPosition:I

    const/4 v0, 0x0

    const-string v1, "mRecapsLastReadPositionModel"

    const/4 v2, 0x0

    if-ne p2, p4, :cond_1

    .line 41
    iget-object p1, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mRecapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->setHasNextChapter(Z)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz p3, :cond_2

    .line 45
    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v2

    :goto_0
    if-eqz p3, :cond_d

    .line 47
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    :goto_1
    if-ltz p4, :cond_d

    .line 55
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "tocEntries[tocIndex]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    const-string v4, "tocEntries[tocIndex].position"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    sub-int v4, v3, p2

    const/4 v5, 0x1

    if-le v3, p1, :cond_3

    if-gt v3, p2, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    const/4 v6, 0x3

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    if-lt v6, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_6

    if-eqz v3, :cond_c

    :cond_6
    add-int/lit8 v3, p4, -0x1

    .line 69
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-le v4, v3, :cond_c

    .line 70
    iget-object p1, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mRecapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v5}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->setHasNextChapter(Z)V

    .line 71
    iget-object p1, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mRecapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    if-eqz p1, :cond_a

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "tocEntries[lastReadChapterIndex]"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->setRecapLastReadChapterTitle(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mRecapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    if-eqz p1, :cond_9

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    const-string p4, "tocEntries[lastReadChapterIndex].position"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->setRecapLastReadChapterPosition(Ljava/lang/Integer;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mRecapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    if-eqz p1, :cond_8

    add-int/2addr v3, v5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "tocEntries[lastReadChapterIndex + 1]"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->setRecapNextChapterTitle(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate;->mRecapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    if-eqz p1, :cond_7

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    const-string p3, "tocEntries[lastReadChapterIndex + 1].position"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->setRecapNextChapterStartPosition(Ljava/lang/Integer;)V

    goto :goto_5

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_c
    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_1

    :cond_d
    :goto_5
    return-void
.end method
