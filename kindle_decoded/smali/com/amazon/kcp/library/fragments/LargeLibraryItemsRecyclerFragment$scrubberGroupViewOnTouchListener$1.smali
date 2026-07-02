.class final Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;
.super Ljava/lang/Object;
.source "LargeLibraryItemsRecyclerFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->scrubberGroupViewOnTouchListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeLibraryItemsRecyclerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibraryItemsRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,613:1\n1819#2,2:614\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibraryItemsRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1\n*L\n276#1,2:614\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAzScrubber$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/LibraryAZScrubber;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/kcp/library/BaseAZScrubber;->enabledLetterSet:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v0, "it"

    .line 275
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAzScrubber$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/LibraryAZScrubber;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/kcp/library/BaseAZScrubber;->enabledLetterSet:Ljava/util/List;

    const-string v1, "azScrubber.enabledLetterSet"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "letter"

    .line 277
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAzScrubber$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/LibraryAZScrubber;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/kcp/library/BaseAZScrubber;->enabledLetterSet:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 280
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAzScrubber$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/LibraryAZScrubber;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/kcp/library/BaseAZScrubber;->enabledLetterSet:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_1

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getTAG$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AZScrubber should be ready now. initialized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAzScrubberInitialized$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " listenerRegistered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->isAZScrubberListenerRegistered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
