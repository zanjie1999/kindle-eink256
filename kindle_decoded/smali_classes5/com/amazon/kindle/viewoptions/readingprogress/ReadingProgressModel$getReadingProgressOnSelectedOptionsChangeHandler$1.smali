.class final Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadingProgressModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getReadingProgressOnSelectedOptionsChangeHandler()Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[I",
        "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadingProgressModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadingProgressModel.kt\ncom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,404:1\n734#2:405\n825#2,2:406\n*E\n*S KotlinDebug\n*F\n+ 1 ReadingProgressModel.kt\ncom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1\n*L\n61#1:405\n61#1,2:406\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, [I

    check-cast p2, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->invoke([ILcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([ILcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)V
    .locals 7

    const-string v0, "curSelectedStates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkedTextView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    .line 58
    sget-object v5, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {v5}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5, v3}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 405
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 61
    invoke-virtual {v5}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getSelected()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 64
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getCheckedTextViewGroupReference$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_b

    array-length p1, p1

    sub-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    if-eqz p1, :cond_b

    invoke-interface {p1, v3}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->setChecked(Z)V

    goto/16 :goto_6

    .line 67
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {p1, p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getNextSelectedIndex(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)I

    move-result p1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {v0, p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$updateTextStyleOfReadingProgressOptionView(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;I)V

    .line 69
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getDocViewer$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getStateText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->setState(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getCheckedTextViewGroupReference$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    .line 73
    invoke-interface {p2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 75
    sget-object p2, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getType()Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ksdk/presets/ReadingProgressModeType;->valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkReadingProgressModeTypeToReaderFooterContentType(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getDocViewer$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->setType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)V

    .line 79
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {p1, v3}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$refreshContentFooter(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;Z)V

    goto :goto_4

    .line 81
    :cond_7
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {p1, v1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$refreshContentFooter(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;Z)V

    .line 87
    :cond_8
    :goto_4
    sget-object p1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getReadingProgressOptionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 88
    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getType()Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->getValue()I

    move-result p2

    or-int/2addr p2, v1

    move v1, p2

    goto :goto_5

    .line 92
    :cond_a
    invoke-static {}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getTAG$cp()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "selected options change to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getReadingPresetsManager$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setReadingProgressMultipleMode(I)Z

    :cond_b
    :goto_6
    return-void
.end method
