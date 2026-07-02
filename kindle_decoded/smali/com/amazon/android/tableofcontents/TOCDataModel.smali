.class public final Lcom/amazon/android/tableofcontents/TOCDataModel;
.super Ljava/lang/Object;
.source "TOCDataModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTOCDataModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TOCDataModel.kt\ncom/amazon/android/tableofcontents/TOCDataModel\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n99#2:323\n71#2,22:324\n1#3:346\n*E\n*S KotlinDebug\n*F\n+ 1 TOCDataModel.kt\ncom/amazon/android/tableofcontents/TOCDataModel\n*L\n313#1:323\n313#1,22:324\n*E\n"
.end annotation


# instance fields
.field private final baseTOCEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private final closeTOCDelegate:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation
.end field

.field private header:Lcom/amazon/android/tableofcontents/data/TOCHeader;

.field private pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

.field private final toc:Lcom/amazon/android/docviewer/IKindleTOC;

.field private final tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/Runnable;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docViewer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseTOCEntryClickListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p3, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p4, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->closeTOCDelegate:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->baseTOCEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    .line 38
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    const-string/jumbo p2, "this.docViewer.document"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    const-string/jumbo p3, "this.docViewer.document.toc"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    .line 39
    new-instance p1, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    invoke-direct {p1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    .line 40
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p1

    const-string/jumbo p2, "this.docViewer.document.pageLabelProvider"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->entries:Ljava/util/List;

    .line 42
    new-instance p1, Lcom/amazon/android/tableofcontents/data/TOCHeader;

    const-string p2, "Placeholder"

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/amazon/android/tableofcontents/data/TOCHeader;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->header:Lcom/amazon/android/tableofcontents/data/TOCHeader;

    .line 47
    const-class p1, Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;

    invoke-static {p1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object p1

    const-string p2, "Discoveries.of(ITableOfC\u2026tsExProvider::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;

    iget-object p4, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p3, p4}, Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;->isTOCAvailable(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;

    if-nez p2, :cond_4

    .line 49
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    sget-object p1, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->LavaMagazine:Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    goto :goto_1

    .line 52
    :cond_2
    sget-object p1, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->Book:Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    .line 55
    :goto_1
    invoke-direct {p0, p1}, Lcom/amazon/android/tableofcontents/TOCDataModel;->initTOCHeader(Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;)Lcom/amazon/android/tableofcontents/data/TOCHeader;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->header:Lcom/amazon/android/tableofcontents/data/TOCHeader;

    .line 56
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->entries:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/android/tableofcontents/TOCDataModel;->createBeginningTOCEntry()Lcom/amazon/android/tableofcontents/data/TOCEntry;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0}, Lcom/amazon/android/tableofcontents/TOCDataModel;->hasNoCoverInTOC()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 58
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->entries:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/android/tableofcontents/TOCDataModel;->createCoverTOCEntry()Lcom/amazon/android/tableofcontents/data/TOCEntry;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_3
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->entries:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/amazon/android/tableofcontents/TOCDataModel;->convertHierarchicalTOCToTOCEntryList(Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->clearTopLevelItemsAndPositionMap()V

    .line 64
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    iget-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->addTOCGoToBeginning(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 65
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    iget-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->addTOCCover(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 66
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    iget-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->appendTopLevelItems(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    goto :goto_4

    .line 68
    :cond_4
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;->getEntries()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez p1, :cond_7

    .line 69
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;->getEntries()Ljava/util/List;

    move-result-object p1

    const-string/jumbo p3, "provider.entries"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/android/tableofcontents/TOCDataModel;->convertTOCEntryExList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 70
    iget-object p3, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->entries:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_7
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;->getTOCHeader()Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;

    move-result-object p1

    const-string/jumbo p2, "provider.tocHeader"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance p2, Lcom/amazon/android/tableofcontents/data/TOCHeader;

    iget-object p3, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;->getTitleString(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 75
    iget-object p4, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, p4}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;->getAuthorString(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-direct {p2, p3, p1}, Lcom/amazon/android/tableofcontents/data/TOCHeader;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->header:Lcom/amazon/android/tableofcontents/data/TOCHeader;

    :goto_4
    return-void
.end method

.method public static final synthetic access$getCloseTOCDelegate$p(Lcom/amazon/android/tableofcontents/TOCDataModel;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->closeTOCDelegate:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final convertCollapsibleEnum(Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;)Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;
    .locals 1

    .line 138
    sget-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 141
    sget-object p1, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->UNCOLLAPSIBLE:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 140
    :cond_1
    sget-object p1, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->EXPANDED:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    goto :goto_0

    .line 139
    :cond_2
    sget-object p1, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->COLLAPSED:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    :goto_0
    return-object p1
.end method

.method private final convertDividerEnum(Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;)Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;
    .locals 1

    .line 129
    sget-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 132
    sget-object p1, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->ZERO_PADDING_DIVIDER:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 131
    :cond_1
    sget-object p1, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->NO_DIVIDER:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    goto :goto_0

    .line 130
    :cond_2
    sget-object p1, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->NONE:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    :goto_0
    return-object p1
.end method

.method private final convertEntryOnClickListener(Landroid/view/View$OnClickListener;)Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;
    .locals 1

    .line 147
    new-instance v0, Lcom/amazon/android/tableofcontents/TOCDataModel$convertEntryOnClickListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/tableofcontents/TOCDataModel$convertEntryOnClickListener$1;-><init>(Lcom/amazon/android/tableofcontents/TOCDataModel;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private final convertHierarchicalTOCToTOCEntryList(Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    .line 161
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/ITOCItem;

    .line 165
    sget-object v3, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "rootNode"

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/android/tableofcontents/TOCDataModel;->createTOCEntryForBooks(Lcom/amazon/android/docviewer/ITOCItem;)Lcom/amazon/android/tableofcontents/data/TOCEntry;

    move-result-object v2

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/amazon/android/tableofcontents/TOCDataModel;->createTOCEntryListForMagazines(Lcom/amazon/android/docviewer/ITOCItem;Z)Ljava/util/List;

    move-result-object v2

    .line 168
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v1

    .line 160
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.android.docviewer.IBookHierarchicalTOC"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final convertTOCEntryEx(Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;)Lcom/amazon/android/tableofcontents/data/TOCEntry;
    .locals 14

    .line 89
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object v3, v1

    .line 91
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 92
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getDividerLayout()Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    move-result-object v1

    const-string v4, "entry.dividerLayout"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/android/tableofcontents/TOCDataModel;->convertDividerEnum(Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;)Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    move-result-object v11

    .line 93
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getCollapsibleState()Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;

    move-result-object v1

    const-string v4, "entry.collapsibleState"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/android/tableofcontents/TOCDataModel;->convertCollapsibleEnum(Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;)Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    move-result-object v12

    .line 94
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/android/tableofcontents/TOCDataModel;->convertEntryOnClickListener(Landroid/view/View$OnClickListener;)Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    move-result-object v13

    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    const/4 v1, 0x0

    if-eqz v2, :cond_6

    .line 97
    new-instance v0, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    iget-object v2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    :cond_4
    move-object v4, v1

    .line 98
    :goto_2
    iget-object v2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getPositionLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v6, v1

    const/4 v7, 0x0

    .line 99
    iget-object v1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getPageImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getIcon(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v9

    .line 100
    iget-object v1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getCustomView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    move-object v2, v0

    .line 97
    invoke-direct/range {v2 .. v13}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    return-object v0

    .line 104
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;

    const-string v4, "child"

    .line 106
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/android/tableofcontents/TOCDataModel;->convertTOCEntryEx(Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;)Lcom/amazon/android/tableofcontents/data/TOCEntry;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 108
    :cond_7
    new-instance v0, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    iget-object v2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_4

    :cond_8
    move-object v4, v1

    .line 109
    :goto_4
    iget-object v2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getPositionLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    move-object v6, v1

    .line 110
    iget-object v1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getPageImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getIcon(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v9

    .line 111
    iget-object v1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;->getCustomView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    move-object v2, v0

    .line 108
    invoke-direct/range {v2 .. v13}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    return-object v0
.end method

.method private final convertTOCEntryExList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;

    .line 122
    invoke-direct {p0, v1}, Lcom/amazon/android/tableofcontents/TOCDataModel;->convertTOCEntryEx(Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;)Lcom/amazon/android/tableofcontents/data/TOCEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final createBeginningTOCEntry()Lcom/amazon/android/tableofcontents/data/TOCEntry;
    .locals 17

    move-object/from16 v0, p0

    .line 274
    iget-object v1, v0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->lib_context_beginning:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "context.getString(R.string.lib_context_beginning)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    new-instance v1, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const-string v5, ""

    const/4 v6, 0x1

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7f0

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final createCoverTOCEntry()Lcom/amazon/android/tableofcontents/data/TOCEntry;
    .locals 17

    move-object/from16 v0, p0

    .line 284
    iget-object v1, v0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->goto_cover:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "context.getString(R.string.goto_cover)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    new-instance v1, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const-string v5, ""

    const/4 v6, 0x1

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7f0

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final createTOCEntryForBooks(Lcom/amazon/android/docviewer/ITOCItem;)Lcom/amazon/android/tableofcontents/data/TOCEntry;
    .locals 18

    move-object/from16 v0, p0

    .line 220
    iget-object v1, v0, Lcom/amazon/android/tableofcontents/TOCDataModel;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    if-eqz v1, :cond_3

    check-cast v1, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    move-object/from16 v2, p1

    .line 221
    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;->getSubTOCItems(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/util/List;

    move-result-object v1

    .line 222
    iget-object v3, v0, Lcom/amazon/android/tableofcontents/TOCDataModel;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-eqz v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    move-object v8, v3

    .line 223
    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    .line 226
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string/jumbo v4, "node.title"

    if-eqz v3, :cond_1

    .line 227
    new-instance v1, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v7

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 229
    iget-object v15, v0, Lcom/amazon/android/tableofcontents/TOCDataModel;->baseTOCEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    const/16 v16, 0x380

    const/16 v17, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    .line 227
    invoke-direct/range {v4 .. v17}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 232
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/ITOCItem;

    const-string v5, "child"

    .line 234
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/amazon/android/tableofcontents/TOCDataModel;->createTOCEntryForBooks(Lcom/amazon/android/docviewer/ITOCItem;)Lcom/amazon/android/tableofcontents/data/TOCEntry;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_2
    new-instance v1, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 238
    iget-object v15, v0, Lcom/amazon/android/tableofcontents/TOCDataModel;->baseTOCEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    const/16 v16, 0x380

    const/16 v17, 0x0

    move-object v4, v1

    .line 236
    invoke-direct/range {v4 .. v17}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 220
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null cannot be cast to non-null type com.amazon.android.docviewer.IBookHierarchicalTOC"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final createTOCEntryListForMagazines(Lcom/amazon/android/docviewer/ITOCItem;Z)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 189
    iget-object v1, v0, Lcom/amazon/android/tableofcontents/TOCDataModel;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    if-eqz v1, :cond_4

    check-cast v1, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    move-object/from16 v2, p1

    .line 190
    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;->getSubTOCItems(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/util/List;

    move-result-object v1

    .line 191
    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 192
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string/jumbo v4, "node.title"

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    .line 193
    sget-object v1, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->ZERO_PADDING_DIVIDER:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->NONE:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    :goto_0
    move-object v11, v1

    .line 194
    new-instance v1, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 196
    iget-object v13, v0, Lcom/amazon/android/tableofcontents/TOCDataModel;->baseTOCEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    const/16 v14, 0x280

    const/4 v15, 0x0

    move-object v2, v1

    .line 194
    invoke-direct/range {v2 .. v15}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 201
    :cond_1
    sget-object v11, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->NO_DIVIDER:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    .line 202
    new-instance v15, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 204
    iget-object v13, v0, Lcom/amazon/android/tableofcontents/TOCDataModel;->baseTOCEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    const/16 v14, 0x280

    const/16 v16, 0x0

    move-object v2, v15

    move-object v0, v15

    move-object/from16 v15, v16

    .line 202
    invoke-direct/range {v2 .. v15}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "children"

    .line 207
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    .line 208
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 209
    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "children[index]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/amazon/android/docviewer/ITOCItem;

    move-object/from16 v7, p0

    invoke-direct {v7, v6, v5}, Lcom/amazon/android/tableofcontents/TOCDataModel;->createTOCEntryListForMagazines(Lcom/amazon/android/docviewer/ITOCItem;Z)Ljava/util/List;

    move-result-object v5

    .line 210
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v7, p0

    return-object v2

    :cond_4
    move-object v7, v0

    .line 189
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.android.docviewer.IBookHierarchicalTOC"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getPublicationString()Ljava/lang/String;
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    :try_start_0
    const-string/jumbo v2, "yyyy-MM-dd"

    const/4 v3, 0x2

    .line 261
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 262
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v2, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "context.resources"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 265
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    return-object v1
.end method

.method private final hasNoCoverInTOC()Z
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->hasCoverPage()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "doc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    const-string v2, "doc.bookInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->DEFAULT:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v1, v2, :cond_0

    .line 301
    iget-object v1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    invoke-static {v0, v1}, Lcom/amazon/android/tableofcontents/TableOfContentsUtil;->hasNoCoverInTOC(Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/android/docviewer/IKindleTOC;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final initTOCHeader(Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;)Lcom/amazon/android/tableofcontents/data/TOCHeader;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 243
    :goto_0
    sget-object v2, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/amazon/android/tableofcontents/TOCDataModel;->getPublicationString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    .line 250
    :cond_1
    new-instance p1, Lcom/amazon/android/tableofcontents/data/TOCHeader;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amazon/android/tableofcontents/data/TOCHeader;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 245
    :cond_3
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    move-object v1, p1

    .line 246
    :cond_4
    new-instance p1, Lcom/amazon/android/tableofcontents/data/TOCHeader;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amazon/android/tableofcontents/data/TOCHeader;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public final getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->entries:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getHeader()Lcom/amazon/android/tableofcontents/data/TOCHeader;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->header:Lcom/amazon/android/tableofcontents/data/TOCHeader;

    return-object v0
.end method

.method public final updateSelectedPosition()I
    .locals 12

    .line 309
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    iget-object v1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    const-string/jumbo v2, "this.docViewer.document"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->updateCurrentReadChapter(I)Lcom/amazon/android/docviewer/TreeTOCItem;

    move-result-object v0

    .line 310
    instance-of v1, v0, Lcom/amazon/android/docviewer/TreeTOCItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 311
    iget-object v1, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->getVisibleNodes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    .line 312
    iget-object v4, p0, Lcom/amazon/android/tableofcontents/TOCDataModel;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->getVisibleNodes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    check-cast v4, Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 313
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tocItem.title"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-gt v8, v6, :cond_5

    if-nez v9, :cond_0

    move v10, v8

    goto :goto_2

    :cond_0
    move v10, v6

    .line 330
    :goto_2
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    .line 313
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v10

    if-gtz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_3

    :cond_1
    const/4 v10, 0x0

    :goto_3
    if-nez v9, :cond_3

    if-nez v10, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 345
    invoke-interface {v5, v8, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 323
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTocPosition()I

    move-result v4

    .line 315
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTocPosition()I

    move-result v6

    if-ne v6, v4, :cond_6

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.android.docviewer.TreeTOCItem"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return v2
.end method
