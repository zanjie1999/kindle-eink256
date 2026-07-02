.class final Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadingProgressModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getOnViewCreatedListener()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/ArrayList<",
        "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadingProgressModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadingProgressModel.kt\ncom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,404:1\n734#2:405\n825#2,2:406\n*E\n*S KotlinDebug\n*F\n+ 1 ReadingProgressModel.kt\ncom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1\n*L\n105#1:405\n105#1,2:406\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1;->invoke(Ljava/util/ArrayList;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "checkedTextViewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$setCheckedTextViewGroupReference$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;Ljava/lang/ref/WeakReference;)V

    .line 104
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getIndexOfCurDisplayedFooterContentType(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)I

    move-result p1

    .line 105
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 105
    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 106
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getCheckedTextViewGroupReference$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    if-eqz p1, :cond_4

    invoke-interface {p1, v3}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->setChecked(Z)V

    goto :goto_2

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {v0, p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$updateTextStyleOfReadingProgressOptionView(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;I)V

    :cond_4
    :goto_2
    return-void
.end method
