.class public Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;
.super Ljava/lang/Object;
.source "NlnTocHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;
    }
.end annotation


# instance fields
.field private m_depth:Ljava/lang/Integer;

.field private m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->m_depth:Ljava/lang/Integer;

    return-void
.end method

.method public static getHierarchyForPositionFromToc(ILcom/amazon/android/docviewer/IBookHierarchicalTOC;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/android/docviewer/IBookHierarchicalTOC;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {p1, p0}, Lcom/amazon/android/docviewer/IBookTOC;->getChapterAtPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 185
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAllTocItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    .line 82
    instance-of v1, v0, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    .line 84
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IBookTOC;->getTOCChapters()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTocDepth()I
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->m_depth:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->getAllTocItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->m_depth:Ljava/lang/Integer;

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/ITOCItem;

    .line 126
    instance-of v2, v1, Lcom/amazon/android/docviewer/INodeChapterTOCItem;

    if-eqz v2, :cond_0

    .line 127
    check-cast v1, Lcom/amazon/android/docviewer/INodeChapterTOCItem;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/INodeChapterTOCItem;->getDepth()I

    move-result v1

    .line 128
    iget-object v2, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->m_depth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->m_depth:Ljava/lang/Integer;

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->m_depth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTocItemDepth(Lcom/amazon/android/docviewer/ITOCItem;)I
    .locals 1

    .line 107
    instance-of v0, p1, Lcom/amazon/android/docviewer/INodeChapterTOCItem;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lcom/amazon/android/docviewer/INodeChapterTOCItem;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/INodeChapterTOCItem;->getDepth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public hasToc()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateTextView(Landroid/widget/TextView;Lcom/amazon/android/docviewer/ITOCItem;)V
    .locals 6

    .line 160
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->getTocDepth()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->getTocItemDepth(Lcom/amazon/android/docviewer/ITOCItem;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->getTextStyleByIndex(I)Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->access$000(Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10103ac

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_0

    .line 165
    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/mobipocket/android/drawing/FontFamily;->fromTypeFaceName(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    .line 167
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->access$100(Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;->access$200(Lcom/amazon/kindle/nln/pageflip/NlnTocHelper$TextStyle;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NlnTocHelper;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1, v0}, Lcom/amazon/kcp/font/FontUtils;->setTypefaceIfNeeded(Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    :cond_1
    invoke-interface {p2}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
