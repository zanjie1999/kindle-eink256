.class public Lcom/amazon/android/widget/TitleContainerUtil;
.super Ljava/lang/Object;
.source "TitleContainerUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/amazon/android/widget/TitleContainerUtil;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/widget/TitleContainerUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alignTitleBar(Landroid/view/View;Landroid/widget/Button;)V
    .locals 3

    .line 311
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 314
    sget p1, Lcom/amazon/kindle/krl/R$id;->title_no_overlap_linear_layout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result p1

    .line 317
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    .line 316
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method private static populateTitleBarButtonFromWidgetItem(Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;Landroid/widget/Button;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Landroid/widget/Button;",
            ")V"
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 273
    instance-of v1, p0, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    if-eqz v1, :cond_3

    .line 274
    move-object v1, p0

    check-cast v1, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    .line 275
    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 276
    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/AbstractInternalWidgetItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 283
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 285
    new-instance v0, Lcom/amazon/android/widget/TitleContainerUtil$2;

    invoke-direct {v0, p0}, Lcom/amazon/android/widget/TitleContainerUtil$2;-><init>(Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    .line 290
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 292
    :cond_1
    sget-object p0, Lcom/amazon/android/widget/TitleContainerUtil;->TAG:Ljava/lang/String;

    const-string p1, "Currently only text buttons are expected"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 278
    :cond_2
    :goto_0
    sget-object p0, Lcom/amazon/android/widget/TitleContainerUtil;->TAG:Ljava/lang/String;

    const-string p1, "Tried to make a button for an AbstractInternalWidgetItem, but no text was provided"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_3
    sget-object p0, Lcom/amazon/android/widget/TitleContainerUtil;->TAG:Ljava/lang/String;

    const-string p1, "Currently expecting AbstractActionWidgetItem alone for title bar buttons"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static setupBookInfoButton(Landroid/view/View;Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 156
    new-instance v0, Lcom/amazon/android/widget/TitleContainerUtil$1;

    invoke-direct {v0, p3, p2, p1, p0}, Lcom/amazon/android/widget/TitleContainerUtil$1;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageButton;Landroid/view/View;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 198
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static setupBookTitleBarCS(IILandroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 2

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->book_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    invoke-static {p3, v0, p4}, Lcom/amazon/android/widget/TitleContainerUtil;->setupFontAndLayoutDirection(Landroid/view/View;Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 78
    sget v1, Lcom/amazon/kindle/krl/R$id;->book_info_icon:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 79
    invoke-static {v0, v1, p2, p4}, Lcom/amazon/android/widget/TitleContainerUtil;->setupBookInfoButton(Landroid/view/View;Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 81
    sget p2, Lcom/amazon/kindle/krl/R$id;->book_title_bar_button:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 82
    invoke-static {p2}, Lcom/amazon/android/widget/TitleContainerUtil;->setupTitleBarButton(Landroid/widget/Button;)V

    .line 83
    invoke-static {p3, p2}, Lcom/amazon/android/widget/TitleContainerUtil;->alignTitleBar(Landroid/view/View;Landroid/widget/Button;)V

    .line 85
    sget p2, Lcom/amazon/kindle/krl/R$id;->title_linear_layout:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 86
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    sget p0, Lcom/amazon/kindle/krl/R$id;->title_container_bottom_border:I

    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p2, 0x0

    .line 89
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setupBookTitleBarPFV(Landroid/view/ViewGroup;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 101
    sget v0, Lcom/amazon/kindle/krl/R$id;->title_container:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    sget v1, Lcom/amazon/kindle/krl/R$id;->book_title:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    invoke-static {v0, v1, p1}, Lcom/amazon/android/widget/TitleContainerUtil;->setupFontAndLayoutDirection(Landroid/view/View;Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 105
    sget v2, Lcom/amazon/kindle/krl/R$id;->book_info_icon:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 106
    invoke-static {v1, v2, p2, p1}, Lcom/amazon/android/widget/TitleContainerUtil;->setupBookInfoButton(Landroid/view/View;Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 108
    sget p2, Lcom/amazon/kindle/krl/R$id;->book_title_bar_button:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 109
    invoke-static {p2}, Lcom/amazon/android/widget/TitleContainerUtil;->setupTitleBarButton(Landroid/widget/Button;)V

    .line 110
    invoke-static {v0, p2}, Lcom/amazon/android/widget/TitleContainerUtil;->alignTitleBar(Landroid/view/View;Landroid/widget/Button;)V

    .line 111
    invoke-static {p0, p1}, Lcom/amazon/android/widget/TitleContainerUtil;->setupDisplayMaskSpaces(Landroid/view/ViewGroup;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method

.method private static setupDisplayMaskSpaces(Landroid/view/ViewGroup;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 5

    .line 129
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->left_space:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    .line 134
    sget v1, Lcom/amazon/kindle/krl/R$id;->right_space:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_2

    .line 140
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 141
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/amazon/kindle/displaymask/RectUtils;->isVertical(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v3, 0x1

    .line 142
    :cond_2
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/utils/RTLUtils;->shouldDisplayTextViewOrBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 144
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 145
    :goto_1
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 146
    invoke-virtual {v0}, Landroid/widget/Space;->requestLayout()V

    return-void

    .line 136
    :cond_5
    :goto_2
    sget-object p0, Lcom/amazon/android/widget/TitleContainerUtil;->TAG:Ljava/lang/String;

    const-string p1, "Missing spaces for DisplayMask setup"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setupFontAndLayoutDirection(Landroid/view/View;Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 2

    .line 209
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 216
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isRTLString(Ljava/lang/String;)Z

    move-result v1

    .line 218
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    .line 219
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 222
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p1, p2}, Lcom/amazon/kcp/font/FontUtils;->setTypefaceIfNeeded(Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 230
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 231
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLY:Lcom/mobipocket/android/drawing/FontFamily;

    :goto_1
    invoke-virtual {p0, p2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    return-void
.end method

.method private static setupTitleBarButton(Landroid/widget/Button;)V
    .locals 5

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 243
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 246
    sget-object p0, Lcom/amazon/android/widget/TitleContainerUtil;->TAG:Ljava/lang/String;

    const-string v0, "Cannot create title bar button since book is null"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getTitleBarWidgetItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    .line 251
    new-instance v4, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;

    invoke-direct {v4, v3, v2}, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;-><init>(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 254
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 255
    invoke-interface {v3, v2}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;->isVisible(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 259
    :cond_4
    new-instance v0, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;

    invoke-direct {v0, v2}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 261
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    invoke-static {v0, p0}, Lcom/amazon/android/widget/TitleContainerUtil;->populateTitleBarButtonFromWidgetItem(Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;Landroid/widget/Button;)V

    :cond_5
    return-void
.end method
