.class public Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
.super Landroid/widget/LinearLayout;
.source "CustomReaderLocationSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;",
            ">;"
        }
    .end annotation
.end field

.field private static instancesCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animatableContent:Landroid/widget/LinearLayout;

.field private volatile awaitingTextUpdate:Z

.field private bookHasChapters:Z

.field private bottomCenter:Landroid/widget/TextView;

.field private bottomLeft:Landroid/widget/TextView;

.field private bottomRight:Landroid/widget/TextView;

.field private callback:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;

.field private changeListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private chapterNextButton:Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

.field private chapterPreviousButton:Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

.field private final customTextUpdate:Ljava/lang/Runnable;

.field protected decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

.field protected decorationTypeLeft:Landroid/widget/LinearLayout;

.field protected decorationTypeRight:Landroid/widget/LinearLayout;

.field protected decorationTypeTop:Landroid/widget/LinearLayout;

.field private decoratorContainer:Landroid/widget/LinearLayout;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private loadingIndicator:Landroid/widget/ProgressBar;

.field private nlnDecorationSeparator:Landroid/view/View;

.field private nlnPrimaryTextString:Ljava/lang/String;

.field private nlnPrimaryTextView:Landroid/widget/TextView;

.field private nlnSecondaryTextString:Ljava/lang/String;

.field private nlnSecondaryTextView:Landroid/widget/TextView;

.field private nonFloatingContent:Landroid/widget/LinearLayout;

.field private final onKeyListener:Landroid/view/View$OnKeyListener;

.field private onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

.field private seekerLayout:Landroid/widget/LinearLayout;

.field private seekerTexts:Landroid/widget/LinearLayout;

.field private settings:Lcom/amazon/kcp/application/UserSettingsController;

.field private supportsChapterNavigation:Z

.field private topLeftRightDecorationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/LinearLayout;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private upperCenter:Landroid/widget/TextView;

.field private upperLeft:Landroid/widget/TextView;

.field private upperRight:Landroid/widget/TextView;

.field private useLayoutCache:Z

.field private usingInvisibleSeekBarLayoutAdjustments:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    const-class v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->TAG:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->instances:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->instancesCount:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bookHasChapters:Z

    .line 165
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->usingInvisibleSeekBarLayoutAdjustments:Z

    const/4 p2, 0x0

    .line 188
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnPrimaryTextString:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnSecondaryTextString:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 203
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->supportsChapterNavigation:Z

    .line 205
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->changeListeners:Ljava/util/Collection;

    .line 206
    new-instance p2, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$1;-><init>(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 230
    new-instance p2, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$2;-><init>(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onKeyListener:Landroid/view/View$OnKeyListener;

    .line 247
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->awaitingTextUpdate:Z

    .line 252
    new-instance p1, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$3;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$3;-><init>(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customTextUpdate:Ljava/lang/Runnable;

    .line 273
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getObjectFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 274
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 276
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->topLeftRightDecorationsMap:Ljava/util/Map;

    .line 278
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 283
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Ljava/util/Collection;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->changeListeners:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->requestUpdateCustomText()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Ljava/lang/Runnable;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customTextUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;Z)Z
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->awaitingTextUpdate:Z

    return p1
.end method

.method private combineNlnText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1104
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 1106
    :cond_0
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 1111
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->nln_combined_location_seeker_text:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private customizeNlnTextViewsHelper(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;)V
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnPrimaryTextString:Ljava/lang/String;

    .line 1028
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->NLN_TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnPrimaryTextString:Ljava/lang/String;

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnSecondaryTextString:Ljava/lang/String;

    .line 1033
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->NLN_BOTTOM:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnSecondaryTextString:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private customizeReaderLocationSeekerTextViewsAndSecondaryProgress()V
    .locals 1

    .line 1257
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getObjectFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 1258
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getLocationSeekerDecorations(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object v0

    .line 1259
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTextDecorationType(Ljava/util/Collection;)V

    .line 1260
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeSeekBarParameters(Ljava/util/Collection;)V

    return-void
.end method

.method private customizeTextDecorationTypeHelper(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;[ZILandroid/widget/TextView;)V
    .locals 0

    .line 1119
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object p1

    .line 1120
    aget-boolean p2, p3, p4

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    .line 1121
    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1126
    aput-boolean p2, p3, p4

    :cond_0
    return-void
.end method

.method private customizeTopLeftAndRightDecorationTypeViews(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->topLeftRightDecorationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, p2, :cond_0

    return-void

    .line 700
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 702
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 710
    :cond_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 712
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 721
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 722
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 723
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 726
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->isReaderInAudibleMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 729
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 730
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 731
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 735
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 737
    :cond_5
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 741
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->topLeftRightDecorationsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private finalizedNlnTextViewCustomization([ZII)V
    .locals 9

    .line 1046
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnPrimaryTextString:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1047
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnPrimaryTextString:Ljava/lang/String;

    .line 1048
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnSecondaryTextString:Ljava/lang/String;

    .line 1049
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnSecondaryTextString:Ljava/lang/String;

    .line 1051
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnPrimaryTextView:Landroid/widget/TextView;

    .line 1052
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnSecondaryTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    if-eqz v3, :cond_1

    const/4 v8, 0x2

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    or-int/2addr v6, v8

    if-eq v6, v4, :cond_4

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 1061
    aput-boolean v5, p1, p2

    .line 1062
    aput-boolean v5, p1, p3

    goto :goto_2

    .line 1090
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bookHasChapters:Z

    aput-boolean v0, p1, p2

    .line 1097
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v4

    aput-boolean p2, p1, p3

    goto :goto_2

    .line 1078
    :cond_3
    sget-object v1, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->TAG:Ljava/lang/String;

    const-string v6, "NLN Secondary text is visible, but primary isn\'t"

    invoke-static {v1, v6}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->combineNlnText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    aput-boolean v5, p1, p2

    .line 1084
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v4

    aput-boolean p2, p1, p3

    goto :goto_2

    .line 1068
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->combineNlnText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v4

    aput-boolean v0, p1, p2

    .line 1073
    aput-boolean v5, p1, p3

    :goto_2
    return-void
.end method

.method private getChapterTitle()Ljava/lang/String;
    .locals 3

    .line 1438
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 1439
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->supportsChapterNavigation:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1440
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 1441
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v1

    .line 1442
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1444
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/IKindleTOC;->getLowestLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 1445
    invoke-interface {v2}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_2
    return-object v2
.end method

.method private getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 0

    .line 1405
    invoke-static {p1}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 1

    .line 287
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 288
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 289
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getInstance(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 1

    .line 297
    sget-object v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object p0
.end method

.method private getLeftPanelNavButton()Landroid/widget/ImageButton;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private onChapterNavigation()V
    .locals 2

    .line 1451
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->supportsChapterNavigation:Z

    if-eqz v0, :cond_3

    .line 1452
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->chapterPreviousButton:Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

    if-eqz v0, :cond_0

    .line 1453
    new-instance v1, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$5;-><init>(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->chapterNextButton:Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

    if-eqz v0, :cond_1

    .line 1464
    new-instance v1, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$6;-><init>(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 1475
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1477
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->loadingIndicator:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 1478
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private removeCurrentDocViewer()V
    .locals 4

    .line 1281
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 1286
    :cond_0
    sget-object v1, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->instancesCount:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1288
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1289
    sget-object v1, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->instancesCount:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1291
    :cond_1
    sget-object v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->instancesCount:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    sget-object v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->instances:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private removeViewFromParent(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1332
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1333
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1334
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private requestUpdateCustomText()V
    .locals 2

    .line 1487
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customTextUpdate:Ljava/lang/Runnable;

    monitor-enter v0

    .line 1488
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->awaitingTextUpdate:Z

    if-eqz v1, :cond_0

    .line 1489
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1491
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->awaitingTextUpdate:Z

    .line 1492
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1495
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customTextUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 1492
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateChapterTitleAndPage()V
    .locals 3

    .line 1417
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->supportsChapterNavigation:Z

    if-eqz v0, :cond_2

    .line 1418
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getChapterTitle()Ljava/lang/String;

    move-result-object v0

    .line 1419
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1420
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1421
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1422
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->callback:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;->isLocationInfoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->loadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1428
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1429
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->callback:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;->getLocationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1432
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTextViewVisibility(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1011
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected customizeAllDecorationTypes(Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 514
    fill-array-data v0, :array_0

    .line 517
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 519
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v2, :cond_0

    .line 520
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    goto :goto_0

    .line 522
    :cond_0
    sget-object v2, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->TAG:Ljava/lang/String;

    const-string v3, "Customizing location seeker with null docViewer. Assuming WHITE color mode"

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v2, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 527
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v5, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    .line 530
    instance-of v10, v5, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    if-eqz v10, :cond_8

    .line 531
    check-cast v5, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;

    .line 533
    aget-boolean v10, v0, v3

    if-nez v10, :cond_2

    .line 534
    sget-object v10, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    iget-object v11, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    invoke-interface {v5, v10, v1, v11, v2}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_3

    aput-boolean v9, v0, v3

    .line 537
    iget-object v11, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    invoke-direct {p0, v11, v10}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTopLeftAndRightDecorationTypeViews(Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_2

    .line 540
    :cond_2
    sget-object v10, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    iget-object v11, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    invoke-interface {v5, v10, v1, v11, v2}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 543
    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->onStop()V

    .line 547
    :cond_3
    :goto_2
    aget-boolean v10, v0, v9

    if-nez v10, :cond_4

    .line 548
    sget-object v10, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    iget-object v11, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-interface {v5, v10, v1, v11, v2}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4

    aput-boolean v9, v0, v9

    .line 551
    iget-object v11, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-direct {p0, v11, v10}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTopLeftAndRightDecorationTypeViews(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 555
    :cond_4
    aget-boolean v10, v0, v7

    if-nez v10, :cond_5

    .line 556
    sget-object v10, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    iget-object v11, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-interface {v5, v10, v1, v11, v2}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_5

    aput-boolean v9, v0, v7

    .line 559
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v10}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTopLeftAndRightDecorationTypeViews(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 563
    :cond_5
    aget-boolean v7, v0, v6

    if-nez v7, :cond_7

    .line 564
    sget-object v7, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->ADDITIONAL_CONTROL:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    iget-object v10, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-interface {v5, v7, v1, v10, v2}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    aput-boolean v9, v0, v6

    .line 570
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_6

    :goto_3
    const/4 v4, 0x1

    goto :goto_1

    .line 573
    :cond_6
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, v5}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTopLeftAndRightDecorationTypeViews(Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto/16 :goto_1

    .line 577
    :cond_7
    sget-object v6, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->ADDITIONAL_CONTROL:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-interface {v5, v6, v1, v7, v2}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 581
    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;->onStop()V

    goto/16 :goto_1

    .line 585
    :cond_8
    aget-boolean v10, v0, v3

    if-nez v10, :cond_9

    .line 586
    sget-object v10, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    invoke-interface {v5, v10}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object v10

    if-eqz v10, :cond_9

    aput-boolean v9, v0, v3

    .line 589
    invoke-virtual {v10, v2}, Lcom/amazon/kindle/krx/ui/ColorCodedView;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 590
    iget-object v11, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    invoke-direct {p0, v11, v10}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTopLeftAndRightDecorationTypeViews(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 594
    :cond_9
    aget-boolean v10, v0, v9

    if-nez v10, :cond_a

    .line 595
    sget-object v10, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    invoke-interface {v5, v10}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object v10

    if-eqz v10, :cond_a

    aput-boolean v9, v0, v9

    .line 598
    invoke-virtual {v10, v2}, Lcom/amazon/kindle/krx/ui/ColorCodedView;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 599
    iget-object v11, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-direct {p0, v11, v10}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTopLeftAndRightDecorationTypeViews(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 603
    :cond_a
    aget-boolean v10, v0, v7

    if-nez v10, :cond_b

    .line 604
    sget-object v10, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    invoke-interface {v5, v10}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object v10

    if-eqz v10, :cond_b

    aput-boolean v9, v0, v7

    .line 607
    invoke-virtual {v10, v2}, Lcom/amazon/kindle/krx/ui/ColorCodedView;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 608
    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v10}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTopLeftAndRightDecorationTypeViews(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 612
    :cond_b
    aget-boolean v7, v0, v6

    if-nez v7, :cond_1

    .line 613
    sget-object v7, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->ADDITIONAL_CONTROL:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    invoke-interface {v5, v7}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object v5

    if-eqz v5, :cond_1

    aput-boolean v9, v0, v6

    .line 620
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_c

    goto :goto_3

    .line 623
    :cond_c
    invoke-virtual {v5, v2}, Lcom/amazon/kindle/krx/ui/ColorCodedView;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 624
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, v5}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTopLeftAndRightDecorationTypeViews(Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto/16 :goto_1

    .line 632
    :cond_d
    aget-boolean p1, v0, v3

    if-nez p1, :cond_e

    .line 633
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 634
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->topLeftRightDecorationsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :cond_e
    aget-boolean p1, v0, v9

    if-nez p1, :cond_f

    .line 638
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 639
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->topLeftRightDecorationsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 642
    :cond_f
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 645
    :goto_4
    aget-boolean p1, v0, v7

    if-nez p1, :cond_10

    .line 646
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 647
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->topLeftRightDecorationsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 650
    :cond_10
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 653
    :goto_5
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnDecorationSeparator:Landroid/view/View;

    .line 654
    aget-boolean v1, v0, v6

    if-eqz v1, :cond_12

    if-eqz v4, :cond_11

    goto :goto_6

    .line 662
    :cond_11
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_13

    .line 664
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 655
    :cond_12
    :goto_6
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 656
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->topLeftRightDecorationsMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_13

    .line 659
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_13
    :goto_7
    aget-boolean p1, v0, v9

    if-nez p1, :cond_15

    aget-boolean p1, v0, v7

    if-eqz p1, :cond_14

    goto :goto_8

    .line 682
    :cond_14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->location_seekbar_left_and_right_default_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 683
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 684
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    goto :goto_9

    .line 671
    :cond_15
    :goto_8
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 675
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 676
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 678
    :cond_16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->location_seekbar_left_and_right_decorator_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 679
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 680
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    :goto_9
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected customizeReaderLocationSeeker()V
    .locals 2

    .line 456
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getObjectFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 459
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getLocationSeekerDecorations(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object v0

    .line 461
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeAllDecorationTypes(Ljava/util/Collection;)V

    .line 462
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeReversibleSeekBar(Ljava/util/Collection;)V

    .line 463
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeSeekBarParameters(Ljava/util/Collection;)V

    .line 464
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTextDecorationType(Ljava/util/Collection;)V

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getLeftPanelNavButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setNextFocusForwardId(I)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnDecorationSeparator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 473
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 474
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected customizeReversibleSeekBar(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            ">;)V"
        }
    .end annotation

    .line 749
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 752
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    .line 753
    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    move-result-object v5

    if-nez v2, :cond_8

    if-eqz v5, :cond_8

    .line 757
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v2, :cond_1

    if-eq v5, v2, :cond_7

    .line 762
    :cond_1
    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 763
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    if-eq v2, v6, :cond_2

    if-eqz v2, :cond_2

    .line 765
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 769
    :cond_2
    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    instance-of v6, v6, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    if-eqz v6, :cond_3

    .line 770
    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->initLayers()V

    .line 772
    :cond_3
    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 773
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 774
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_4
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v3, :cond_5

    .line 777
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 779
    :cond_5
    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 780
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 782
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    if-eq v2, v3, :cond_6

    .line 783
    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 787
    :cond_6
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v2, :cond_7

    .line 788
    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    .line 790
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 794
    :cond_7
    iput-object v5, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 798
    :cond_8
    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 800
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 805
    :cond_9
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_d

    .line 807
    instance-of v2, p1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    if-eqz v2, :cond_b

    .line 809
    check-cast p1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    .line 811
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->changeListeners:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 812
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->addOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_2

    .line 813
    :cond_b
    instance-of v0, p1, Lcom/amazon/kindle/seekbar/InvisibleSeekBar;

    if-eqz v0, :cond_c

    goto :goto_2

    .line 816
    :cond_c
    sget-object v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a LayeredSeekBar, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead. OnSeekBarChangeListener behavior may be affected"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    instance-of p1, p1, Lcom/amazon/kindle/seekbar/InvisibleSeekBar;

    if-eqz p1, :cond_10

    .line 822
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->usingInvisibleSeekBarLayoutAdjustments:Z

    if-nez p1, :cond_14

    .line 825
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_e

    .line 827
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 829
    :cond_e
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 833
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 834
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 835
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 836
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 837
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    :cond_f
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x11

    .line 841
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 842
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 845
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 847
    iput-boolean v4, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->usingInvisibleSeekBarLayoutAdjustments:Z

    goto/16 :goto_3

    .line 850
    :cond_10
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->usingInvisibleSeekBarLayoutAdjustments:Z

    if-eqz p1, :cond_12

    .line 854
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_11

    .line 856
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 858
    :cond_11
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decoratorContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 860
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 861
    sget v0, Lcom/amazon/kindle/krl/R$id;->right_decorator:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 862
    sget v0, Lcom/amazon/kindle/krl/R$id;->left_decorator:I

    invoke-virtual {p1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 863
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x10

    .line 866
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 867
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 870
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 871
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decoratorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 873
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->usingInvisibleSeekBarLayoutAdjustments:Z

    .line 876
    :cond_12
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->supportsChapterNavigation:Z

    if-eqz p1, :cond_13

    .line 877
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 878
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decoratorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    .line 879
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decoratorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    .line 880
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->chapter_navigation_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 881
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decoratorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3

    .line 882
    :cond_13
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 883
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    .line 884
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    .line 885
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    .line 886
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$dimen;->location_seekbar_text_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 883
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_14
    :goto_3
    return-void
.end method

.method protected customizeSeekBarParameters(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            ">;)V"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 485
    fill-array-data v0, :array_0

    .line 486
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    const/4 v2, 0x0

    .line 487
    aget-boolean v3, v0, v2

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getMaxProgress()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 488
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v3

    if-eqz v3, :cond_2

    aput-boolean v4, v0, v2

    .line 491
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V

    .line 492
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v2

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getMaxProgress()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 496
    :cond_2
    aget-boolean v2, v0, v4

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getSecondaryProgress()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_1

    aput-boolean v4, v0, v4

    .line 499
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v2

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;->getSecondaryProgress()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected customizeTextDecorationType(Ljava/util/Collection;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v7, v0, [Z

    .line 898
    fill-array-data v7, :array_0

    .line 902
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$bool;->show_center_text_in_location_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 903
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->supportsChapterNavigation:Z

    const/4 v9, 0x1

    xor-int/lit8 v10, v1, 0x1

    .line 904
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->isReaderInAudibleMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 907
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    .line 908
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->supportsChapterNavigation:Z

    if-eqz v1, :cond_2

    .line 918
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateChapterTitleAndPage()V

    aput-boolean v9, v7, v9

    const/4 v1, 0x4

    aput-boolean v9, v7, v1

    goto :goto_1

    :cond_2
    if-eqz v12, :cond_3

    .line 924
    invoke-direct {p0, v13}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeNlnTextViewsHelper(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;)V

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    .line 927
    sget-object v3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    move-object v1, p0

    move-object v2, v13

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTextDecorationTypeHelper(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;[ZILandroid/widget/TextView;)V

    .line 928
    sget-object v3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTextDecorationTypeHelper(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;[ZILandroid/widget/TextView;)V

    :cond_4
    if-eqz v10, :cond_1

    .line 932
    sget-object v3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperLeft:Landroid/widget/TextView;

    move-object v1, p0

    move-object v2, v13

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTextDecorationTypeHelper(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;[ZILandroid/widget/TextView;)V

    .line 933
    sget-object v3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperRight:Landroid/widget/TextView;

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTextDecorationTypeHelper(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;[ZILandroid/widget/TextView;)V

    .line 934
    sget-object v3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomLeft:Landroid/widget/TextView;

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTextDecorationTypeHelper(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;[ZILandroid/widget/TextView;)V

    .line 935
    sget-object v3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomRight:Landroid/widget/TextView;

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTextDecorationTypeHelper(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;[ZILandroid/widget/TextView;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x6

    const/4 v1, 0x7

    .line 940
    invoke-direct {p0, v7, p1, v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->finalizedNlnTextViewCustomization([ZII)V

    const/4 p1, 0x0

    :goto_2
    if-ge v11, v0, :cond_7

    .line 944
    aget-boolean v1, v7, v11

    if-nez v1, :cond_6

    const-string v1, ""

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 972
    :pswitch_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnSecondaryTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 974
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 966
    :pswitch_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnPrimaryTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 968
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 963
    :pswitch_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomRight:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 960
    :pswitch_3
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 957
    :pswitch_4
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomLeft:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 954
    :pswitch_5
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperRight:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 951
    :pswitch_6
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 948
    :pswitch_7
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperLeft:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 986
    :cond_7
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->supportsChapterNavigation:Z

    if-nez p1, :cond_8

    .line 987
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateTextViewVisibility(Landroid/widget/TextView;)V

    .line 988
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateTextViewVisibility(Landroid/widget/TextView;)V

    .line 991
    :cond_8
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperLeft:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateTextViewVisibility(Landroid/widget/TextView;)V

    .line 992
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperRight:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateTextViewVisibility(Landroid/widget/TextView;)V

    .line 993
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomLeft:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateTextViewVisibility(Landroid/widget/TextView;)V

    .line 994
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomRight:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateTextViewVisibility(Landroid/widget/TextView;)V

    .line 995
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnPrimaryTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateTextViewVisibility(Landroid/widget/TextView;)V

    .line 996
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnSecondaryTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateTextViewVisibility(Landroid/widget/TextView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public getAnimatableContent()Landroid/view/ViewGroup;
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->animatableContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCurrentSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    return-object v0
.end method

.method protected getLocationSeekerDecorations(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
            ">;"
        }
    .end annotation

    .line 1508
    invoke-static {}, Lcom/amazon/kcp/reader/ui/LocationSeekerDecorationProviderRegistry;->getLocationSeekerProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMaxPossibleSeekPosition()I
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v0, :cond_0

    .line 1168
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getObjectFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;
    .locals 1

    .line 405
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSeekPosition()I
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v0, :cond_0

    .line 1136
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getTextViewById(I)Landroid/widget/TextView;
    .locals 0

    .line 410
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method protected isReaderInAudibleMode()Z
    .locals 1

    .line 1006
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .line 1298
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->useLayoutCache:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->topLeftRightDecorationsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1303
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1304
    instance-of v2, v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    if-eqz v2, :cond_1

    .line 1305
    move-object v2, v0

    check-cast v2, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->removeOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1306
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1309
    :cond_1
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->callback:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;

    .line 1310
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1311
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1313
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->removeViewFromParent(Landroid/view/View;)V

    .line 1314
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    .line 1316
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->removeViewFromParent(Landroid/view/View;)V

    .line 1317
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    .line 1319
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->removeViewFromParent(Landroid/view/View;)V

    .line 1320
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    .line 1322
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->removeViewFromParent(Landroid/view/View;)V

    .line 1323
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    .line 1325
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 1327
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->removeCurrentDocViewer()V

    .line 1328
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 336
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 338
    sget v0, Lcom/amazon/kindle/krl/R$id;->above_decorator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    .line 339
    sget v0, Lcom/amazon/kindle/krl/R$id;->left_decorator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    .line 340
    sget v0, Lcom/amazon/kindle/krl/R$id;->right_decorator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    .line 341
    sget v0, Lcom/amazon/kindle/krl/R$id;->additional_control:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    .line 342
    sget v0, Lcom/amazon/kindle/krl/R$id;->previous_chapter_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->chapterPreviousButton:Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

    .line 343
    sget v0, Lcom/amazon/kindle/krl/R$id;->next_chapter_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->chapterNextButton:Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

    .line 344
    sget v0, Lcom/amazon/kindle/krl/R$id;->seekbar_with_chapter_navigation_buttons:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decoratorContainer:Landroid/widget/LinearLayout;

    .line 345
    sget v0, Lcom/amazon/kindle/krl/R$id;->location_seeker_text_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerTexts:Landroid/widget/LinearLayout;

    .line 347
    sget v0, Lcom/amazon/kindle/krl/R$id;->krx_location_seeker_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    .line 348
    sget v0, Lcom/amazon/kindle/krl/R$id;->non_floating_content:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nonFloatingContent:Landroid/widget/LinearLayout;

    .line 349
    sget v0, Lcom/amazon/kindle/krl/R$id;->seeker_bar_animatable:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->animatableContent:Landroid/widget/LinearLayout;

    .line 351
    sget v0, Lcom/amazon/kindle/krl/R$id;->top_left_text:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperLeft:Landroid/widget/TextView;

    .line 352
    sget v0, Lcom/amazon/kindle/krl/R$id;->top_center_text:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    .line 353
    sget v0, Lcom/amazon/kindle/krl/R$id;->top_right_text:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperRight:Landroid/widget/TextView;

    .line 354
    sget v0, Lcom/amazon/kindle/krl/R$id;->bottom_left_text:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomLeft:Landroid/widget/TextView;

    .line 355
    sget v0, Lcom/amazon/kindle/krl/R$id;->bottom_center_text:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    .line 356
    sget v0, Lcom/amazon/kindle/krl/R$id;->bottom_right_text:I

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getTextViewById(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomRight:Landroid/widget/TextView;

    .line 358
    sget v0, Lcom/amazon/kindle/krl/R$id;->nln_seeker_separator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnDecorationSeparator:Landroid/view/View;

    .line 360
    sget v0, Lcom/amazon/kindle/krl/R$id;->nln_text_primary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 361
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnPrimaryTextView:Landroid/widget/TextView;

    .line 364
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0, v1}, Lcom/amazon/kcp/font/FontUtils;->setTypefaceIfNeeded(Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    .line 366
    sget v1, Lcom/amazon/kindle/krl/R$id;->nln_text_secondary:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 367
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnSecondaryTextView:Landroid/widget/TextView;

    .line 369
    sget v2, Lcom/amazon/kindle/krl/R$id;->loading_indicator:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->loadingIndicator:Landroid/widget/ProgressBar;

    .line 371
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->isChapterNavigationSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 372
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->supportsChapterNavigation:Z

    .line 373
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onChapterNavigation()V

    .line 374
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->chapterPreviousButton:Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->chapterNextButton:Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperLeft:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperRight:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomLeft:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomRight:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeReaderLocationSeeker()V

    .line 395
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_2

    .line 396
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getObjectFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 398
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    .line 399
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->updateColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    :cond_2
    return-void
.end method

.method public onReaderModeChangedEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1346
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$4;-><init>(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onThumbnailManagerReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 1364
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->requestUpdateCustomText()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 430
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeReaderLocationSeeker()V

    :cond_0
    return-void
.end method

.method public setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eq p1, v0, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->removeCurrentDocViewer()V

    .line 308
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 309
    sget-object v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->instancesCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 314
    sget-object v1, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->instancesCount:Ljava/util/Map;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_2

    .line 319
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 321
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    .line 322
    instance-of v0, p1, Lcom/amazon/android/docviewer/IBookTOC;

    if-eqz v0, :cond_2

    .line 323
    check-cast p1, Lcom/amazon/android/docviewer/IBookTOC;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IBookTOC;->getTOCChapters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bookHasChapters:Z

    :cond_2
    return-void
.end method

.method public setLocationInfoCallback(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->callback:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;

    return-void
.end method

.method public setLocationSeekerBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nonFloatingContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1272
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1273
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1274
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nlnDecorationSeparator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMaxPossibleSeekPosition(I)V
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v0, :cond_0

    .line 1148
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMinPossibleSeekPosition(I)V
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v0, :cond_0

    .line 1158
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->setMinPosition(I)V

    :cond_0
    return-void
.end method

.method public setSeekPosition(I)V
    .locals 2

    .line 1175
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 1176
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1177
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1179
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 1180
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getLocationSeekerDecorations(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object p1

    .line 1182
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTextDecorationType(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v0, :cond_0

    .line 1188
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setUseLayoutCache(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->useLayoutCache:Z

    return-void
.end method

.method protected shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 0

    .line 1001
    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    return p1
.end method

.method protected updateColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 4

    .line 1373
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 1375
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getUiTextColorId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1377
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->chapterPreviousButton:Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 1378
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->chapterNextButton:Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/reader/ui/ChapterNavigationButton;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 1380
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperLeft:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1381
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1382
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperRight:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1383
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomLeft:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1384
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1385
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomRight:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1389
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v2, :cond_0

    .line 1390
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 1393
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->supportsChapterNavigation:Z

    if-nez v0, :cond_1

    .line 1395
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1400
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->nonFloatingContent:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getBackgroundResource(Lcom/amazon/android/docviewer/KindleDocColorMode;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public updateSeekBar()V
    .locals 2

    .line 1204
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->postInvalidate()V

    .line 1206
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->postInvalidate()V

    .line 1207
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->postInvalidate()V

    .line 1208
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->postInvalidate()V

    .line 1209
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1210
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1211
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1212
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1213
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1214
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1215
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v0, :cond_1

    .line 1216
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->postInvalidate()V

    goto :goto_0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1220
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1221
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1222
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->decorationTypeAdditionalControl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1223
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1224
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1225
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1226
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1227
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1228
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1229
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->seekerControl:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-eqz v0, :cond_1

    .line 1230
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 1234
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeReaderLocationSeeker()V

    return-void
.end method

.method public updateSeekBarTextViewsAndSecondaryProgress()V
    .locals 2

    .line 1238
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1240
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1241
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1242
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1243
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 1244
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    goto :goto_0

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1247
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1248
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->upperRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1249
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1250
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1251
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->bottomRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1253
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeReaderLocationSeekerTextViewsAndSecondaryProgress()V

    return-void
.end method
