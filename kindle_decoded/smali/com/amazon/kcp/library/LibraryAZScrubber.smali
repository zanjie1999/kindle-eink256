.class public Lcom/amazon/kcp/library/LibraryAZScrubber;
.super Lcom/amazon/kcp/library/BaseAZScrubber;
.source "LibraryAZScrubber.java"


# static fields
.field private static final AUTHOR_SORT:Lcom/amazon/kcp/library/LibrarySortType;

.field private static final GRID_MINIMUM_SIZE:I = 0x28

.field private static final GRID_VIEW:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

.field private static final LIST_MINIMUM_SIZE:I = 0x19

.field private static final LIST_VIEW:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

.field private static final LOCALE_DELIMITER:Ljava/lang/String; = "-"

.field private static final MINIMUM_LETTERS:I = 0x3

.field private static final SIMPLIFIED_CHINESE:Ljava/lang/String; = "zh-CN-#Hans"

.field private static final SUPPORTED_LANGUAGES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_SORT:Lcom/amazon/kcp/library/LibrarySortType;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    sput-object v0, Lcom/amazon/kcp/library/LibraryAZScrubber;->AUTHOR_SORT:Lcom/amazon/kcp/library/LibrarySortType;

    .line 32
    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    sput-object v0, Lcom/amazon/kcp/library/LibraryAZScrubber;->TITLE_SORT:Lcom/amazon/kcp/library/LibrarySortType;

    .line 34
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    sput-object v0, Lcom/amazon/kcp/library/LibraryAZScrubber;->LIST_VIEW:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    .line 35
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->GRID:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    sput-object v0, Lcom/amazon/kcp/library/LibraryAZScrubber;->GRID_VIEW:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "en"

    const-string v2, "fr"

    const-string/jumbo v3, "nl"

    const-string v4, "de"

    const-string v5, "it"

    const-string/jumbo v6, "pl"

    const-string v7, "es"

    const-string/jumbo v8, "pt"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryAZScrubber;->SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    .line 41
    const-class v0, Lcom/amazon/kcp/library/LibraryAZScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryAZScrubber;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/view/View;Landroid/widget/ImageButton;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/BaseAZScrubber;-><init>(Landroid/content/Context;ZLandroid/view/View;Landroid/widget/ImageButton;)V

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryAZScrubber;->context:Landroid/content/Context;

    return-void
.end method

.method private hasEnoughDataToShow(ILcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Z
    .locals 2

    .line 132
    iget v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->numLetters:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/amazon/kcp/library/LibraryAZScrubber;->LIST_VIEW:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne p2, v0, :cond_0

    const/16 v0, 0x19

    if-ge p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/LibraryAZScrubber;->GRID_VIEW:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne p2, v0, :cond_2

    const/16 p2, 0x28

    if-lt p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isASupportedSortType(Lcom/amazon/kcp/library/LibrarySortType;)Z
    .locals 1

    .line 110
    sget-object v0, Lcom/amazon/kcp/library/LibraryAZScrubber;->TITLE_SORT:Lcom/amazon/kcp/library/LibrarySortType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/library/LibraryAZScrubber;->AUTHOR_SORT:Lcom/amazon/kcp/library/LibrarySortType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public isASupportedLocale()Z
    .locals 4

    .line 120
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/locale/ILocaleManager;->getLocaleCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    sget-object v2, Lcom/amazon/kcp/library/LibraryAZScrubber;->SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "zh-CN-#Hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public refreshScrubber([ILjava/util/List;ILcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;",
            "IZ)V"
        }
    .end annotation

    .line 75
    iput-object p5, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->layoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-lez p3, :cond_0

    if-ge p6, p3, :cond_0

    .line 77
    invoke-direct {p0, p4}, Lcom/amazon/kcp/library/LibraryAZScrubber;->isASupportedSortType(Lcom/amazon/kcp/library/LibrarySortType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, p2, p1, p3, p6}, Lcom/amazon/kcp/library/BaseAZScrubber;->refreshData(Ljava/util/List;[III)V

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/library/LibraryAZScrubber;->shouldShowAZScrubber(Ljava/util/List;ILcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;Z)Z

    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/BaseAZScrubber;->setScrubberVisibility(Z)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryAZScrubber;->setScrubberGroupViewVisibility(Z)V

    return-void
.end method

.method public setScrubberGroupViewVisibility(Z)V
    .locals 4

    .line 174
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupLayout:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x2

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    :cond_3
    return-void
.end method

.method public setupAZScrubberOnAccessibilityOrOrientationChange(Landroid/content/Context;ZZ)V
    .locals 4

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/BaseAZScrubber;->azScrubberFitsInScreen(Landroid/content/Context;Z)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 142
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 145
    iget v2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->scrubberWidth:I

    sub-int v3, v0, v2

    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v2

    .line 146
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 147
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 148
    iget-wide v2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->totalLetterHeight:D

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 149
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryAZScrubber;->setupScrubberParentLayout()V

    .line 151
    iget-object p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupLayout:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->letterPadding:I

    invoke-virtual {p0, p0, p1, p2}, Lcom/amazon/kcp/library/BaseAZScrubber;->createAndAddAZScrubberView(Lcom/amazon/kcp/library/BaseAZScrubber;Landroid/content/Context;I)V

    .line 153
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/library/BaseAZScrubber;->setScrubberVisibility(Z)V

    .line 154
    sget-object p1, Lcom/amazon/kcp/library/LibraryAZScrubber;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AZScrubber: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fits in the screen on orientation change with visibility: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/BaseAZScrubber;->setScrubberVisibility(Z)V

    :goto_0
    return-void
.end method

.method public setupScrubberParentLayout()V
    .locals 4

    .line 161
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object v1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryAZScrubber;->context:Landroid/content/Context;

    iget v2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->letterPadding:I

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/library/BaseAZScrubber;->getSpaceRemainingWithAZScrubber(Landroid/content/Context;I)I

    move-result v1

    .line 163
    iget v2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->secondaryMenuHeight:I

    iget v3, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->gridRowSpacing:I

    add-int/2addr v2, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 164
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 165
    iget-object v1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->parentContainerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method shouldShowAZScrubber(Ljava/util/List;ILcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;",
            "Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0, p2, p4}, Lcom/amazon/kcp/library/LibraryAZScrubber;->hasEnoughDataToShow(ILcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/LibraryAZScrubber;->isASupportedSortType(Lcom/amazon/kcp/library/LibrarySortType;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryAZScrubber;->context:Landroid/content/Context;

    .line 99
    invoke-virtual {p0, p1, p5}, Lcom/amazon/kcp/library/BaseAZScrubber;->azScrubberFitsInScreen(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryAZScrubber;->isASupportedLocale()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
