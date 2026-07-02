.class public Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "MainContentAccessibilityGestureHandler.java"

# interfaces
.implements Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;


# instance fields
.field private cachedPageEnd:I

.field private cachedPageStart:I

.field private cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

.field private gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private final wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedPageStart:I

    .line 40
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedPageEnd:I

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    .line 46
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->registerForAccessibility(Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public getVirtualViews(Z)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    return-object v1

    .line 62
    :cond_0
    iget-object v2, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 67
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 71
    :cond_2
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    .line 72
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    .line 73
    iget-object v5, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v5

    .line 74
    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v6

    .line 75
    invoke-interface {v6}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v7

    .line 76
    invoke-interface {v6}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v6

    .line 78
    iget-object v8, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    if-eqz v8, :cond_3

    iget v9, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedPageEnd:I

    if-ne v9, v6, :cond_3

    iget v9, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedPageStart:I

    if-ne v9, v7, :cond_3

    .line 79
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 82
    :cond_3
    iget-object v8, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v8, v7}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 85
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 87
    instance-of v9, v5, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    .line 88
    check-cast v5, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 89
    invoke-virtual {v5}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getCurrentWordElements()Ljava/util/Vector;

    move-result-object v9

    .line 91
    invoke-virtual {v5}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getSpeechBreakersForCurrentPage()Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v12, 0x0

    .line 93
    :goto_0
    invoke-interface {v5}, Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;->getCount()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 94
    invoke-interface {v5, v12}, Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;->getPositionForItemAt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    .line 100
    :cond_5
    iget-object v5, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v5}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v5

    const/4 v12, 0x1

    if-eqz v5, :cond_b

    const/4 v13, 0x0

    .line 104
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    iget v14, v5, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v14, v15, :cond_6

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_a

    if-eqz v9, :cond_a

    .line 107
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v14

    if-lez v14, :cond_a

    invoke-virtual {v9, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    .line 108
    :goto_2
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v14, v15, :cond_7

    iget v15, v5, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    invoke-virtual {v9, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/amazon/android/docviewer/IPageElement;

    invoke-interface/range {v16 .. v16}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v10

    if-le v15, v10, :cond_7

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v14, :cond_8

    .line 111
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v10, v15, :cond_8

    .line 112
    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 114
    :cond_8
    :goto_4
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v11, v10, :cond_a

    .line 115
    invoke-virtual {v9, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/android/docviewer/IPageElement;

    invoke-interface {v10}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v10

    if-le v10, v6, :cond_9

    .line 116
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    sub-int/2addr v10, v12

    :goto_5
    if-lt v10, v11, :cond_a

    .line 117
    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_a
    move v11, v13

    .line 126
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    iget-object v10, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v10}, Lcom/amazon/kcp/reader/gestures/GestureService;->getActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 128
    invoke-virtual {v10}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    goto :goto_6

    :cond_c
    const/4 v10, 0x0

    :goto_6
    if-nez v10, :cond_d

    return-object v1

    .line 134
    :cond_d
    sget v1, Lcom/amazon/kindle/krl/R$string;->speak_main_content_description:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 135
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    if-eqz v5, :cond_11

    .line 137
    iget v10, v5, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    if-le v10, v6, :cond_e

    goto :goto_8

    .line 141
    :cond_e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v11, v10, :cond_f

    iget v10, v5, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v10, v13, :cond_f

    const-string v10, "\n"

    .line 142
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    .line 145
    :cond_f
    iget-object v10, v5, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget v5, v5, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    if-le v5, v6, :cond_10

    goto :goto_8

    .line 150
    :cond_10
    iget-object v5, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v5}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    .line 151
    iget-object v5, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->wordIterator:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v5}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v5

    goto :goto_7

    .line 154
    :cond_11
    :goto_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 155
    new-instance v1, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;

    new-instance v5, Landroid/graphics/Rect;

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v11

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    invoke-direct {v5, v8, v10, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-direct {v1, v5, v2, v12, v3}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;-><init>(Landroid/graphics/Rect;Ljava/lang/String;ZLcom/amazon/kcp/reader/gestures/GestureService;)V

    iput-object v1, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 158
    iput v6, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedPageEnd:I

    .line 159
    iput v7, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedPageStart:I

    .line 162
    :cond_12
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    .line 164
    iget-object v1, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getContentViewAccessibilityMixin()Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 166
    iget-object v2, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;->setContentVirtualViewId(I)V

    .line 169
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v2, v0, Lcom/amazon/kcp/reader/gestures/MainContentAccessibilityGestureHandler;->cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onAccessibilityDisabled()V
    .locals 0

    return-void
.end method

.method public onAccessibilityEnabled()V
    .locals 0

    return-void
.end method
