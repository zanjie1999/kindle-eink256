.class public Lcom/amazon/kcp/library/BaseAZScrubber;
.super Landroid/widget/LinearLayout;
.source "BaseAZScrubber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/BaseAZScrubber$ScrubberOnTouchListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_STARTING_LETTERS:[Ljava/lang/String;

.field private static final POUND_KEY:Ljava/lang/String; = "#"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public accessibilityContentPosition:I

.field public accessibilityGroupLayout:Landroid/view/View;

.field public accessibilityGroupView:Landroid/widget/ImageButton;

.field allStartingLetters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final bottomBarHeight:I

.field public enabledLetterSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field enabledLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gridRowSpacing:I

.field indicesToLetters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastHighlightedChildIndex:I

.field protected layoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

.field public letterPadding:I

.field protected final navigationBarHeight:I

.field protected numLetters:I

.field public parentContainerView:Landroid/view/View;

.field private final scrubberLetterHeight:I

.field public scrubberWidth:I

.field public secondaryMenuHeight:I

.field startingIndices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field startingPositions:[I

.field protected final statusBarHeight:I

.field public totalLetterHeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "#"

    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    const-string v25, "Y"

    const-string v26, "Z"

    .line 36
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/BaseAZScrubber;->DEFAULT_STARTING_LETTERS:[Ljava/lang/String;

    .line 89
    const-class v0, Lcom/amazon/kcp/library/BaseAZScrubber;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/BaseAZScrubber;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/view/View;Landroid/widget/ImageButton;)V
    .locals 2

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->allStartingLetters:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->enabledLetters:Ljava/util/List;

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->lastHighlightedChildIndex:I

    .line 57
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->GRID:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    iput-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->layoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->ruby_lib_grid_view_vertical_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->gridRowSpacing:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->secondary_menu_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->secondaryMenuHeight:I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->az_scrubber_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->scrubberWidth:I

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->bottom_bar_background_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->bottomBarHeight:I

    .line 105
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/BaseAZScrubber;->getScrubberLetterViewHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->scrubberLetterHeight:I

    .line 106
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseAZScrubber;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->statusBarHeight:I

    .line 107
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseAZScrubber;->getNavigationBarHeight()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->navigationBarHeight:I

    .line 108
    iput-object p3, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupLayout:Landroid/view/View;

    .line 109
    iput-object p4, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupView:Landroid/widget/ImageButton;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/BaseAZScrubber;->setupAZScrubberView(Landroid/content/Context;Z)V

    const/4 p1, 0x2

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 4

    .line 165
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getScrubberLetterViewHeight(Landroid/content/Context;)I
    .locals 3

    .line 124
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/BaseAZScrubber;->setScrubberLetterAppearance(Landroid/widget/TextView;)V

    const-string p1, "A"

    .line 127
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 130
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 134
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 136
    iget p1, v1, Landroid/graphics/Point;->x:I

    const/high16 v1, -0x80000000

    .line 138
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v1, 0x0

    .line 139
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 140
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 141
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private getStatusBarHeight()I
    .locals 4

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setScrubberLetterAppearance(Landroid/widget/TextView;)V
    .locals 2

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 283
    sget v0, Lcom/amazon/kindle/librarymodule/R$style;->az_scrubber_text:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$style;->az_scrubber_text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 287
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private setupAZScrubberView(Landroid/content/Context;Z)V
    .locals 5

    .line 179
    sget-object v0, Lcom/amazon/kcp/library/BaseAZScrubber;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AZScrubber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " initial setup started"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->scrubberWidth:I

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 181
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 182
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 183
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 184
    iget v4, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->scrubberWidth:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v1, 0x1

    .line 185
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x800005

    .line 186
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/BaseAZScrubber;->azScrubberFitsInScreen(Landroid/content/Context;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 190
    iget p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->letterPadding:I

    invoke-virtual {p0, p0, p1, p2}, Lcom/amazon/kcp/library/BaseAZScrubber;->createAndAddAZScrubberView(Lcom/amazon/kcp/library/BaseAZScrubber;Landroid/content/Context;I)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/BaseAZScrubber;->setScrubberVisibility(Z)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/BaseAZScrubber;->setScrubberVisibility(Z)V

    .line 195
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object p1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    sget-object p1, Lcom/amazon/kcp/library/BaseAZScrubber;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " initial setup completed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public azScrubberFitsInScreen(Landroid/content/Context;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/BaseAZScrubber;->scrubberFitsInLargeScreen(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/BaseAZScrubber;->scrubberFitsInSmallScreen(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public createAndAddAZScrubberView(Lcom/amazon/kcp/library/BaseAZScrubber;Landroid/content/Context;I)V
    .locals 10

    .line 257
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 258
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    sget-object v1, Lcom/amazon/kcp/library/BaseAZScrubber;->DEFAULT_STARTING_LETTERS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 262
    iget-object v7, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->allStartingLetters:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v7, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->allStartingLetters:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 265
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    invoke-direct {p0, v8}, Lcom/amazon/kcp/library/BaseAZScrubber;->setScrubberLetterAppearance(Landroid/widget/TextView;)V

    .line 268
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/amazon/kindle/librarymodule/R$string;->azscrubber_letter_appending_content_description:I

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v8, v3, p3, v3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 271
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method findStartPositionForSections([I)[I
    .locals 5

    .line 404
    array-length v0, p1

    .line 405
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 408
    aget v4, p1, v2

    if-lez v4, :cond_0

    .line 409
    aput v3, v1, v2

    .line 410
    aget v4, p1, v2

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method findStartingIndicesForIndexTitles(Ljava/util/List;[I)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 349
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    array-length v3, p2

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 353
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 354
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 355
    aget v5, p2, v2

    .line 356
    iget-object v6, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->allStartingLetters:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "#"

    .line 357
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-gez v5, :cond_0

    .line 360
    sget-object v5, Lcom/amazon/kcp/library/BaseAZScrubber;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is smaller than 0!"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_2

    if-nez v8, :cond_2

    .line 364
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 366
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 367
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v5, :cond_4

    .line 368
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 371
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 373
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 376
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 377
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 378
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 382
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 388
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 389
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 391
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 396
    :cond_7
    sget-object p1, Lcom/amazon/kcp/library/BaseAZScrubber;->TAG:Ljava/lang/String;

    const-string p2, "Unequal section letter list and section index list!"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_8
    iput-object v1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->indicesToLetters:Ljava/util/HashMap;

    return-object v0
.end method

.method getIndexToScrollTo(F)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 457
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 458
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 459
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 460
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->startingIndices:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->enabledLetters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->startingIndices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected getSpaceRemainingWithAZScrubber(Landroid/content/Context;I)I
    .locals 4

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->top_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 302
    iget v1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->secondaryMenuHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->gridRowSpacing:I

    add-int/2addr v0, v1

    .line 304
    sget-object v1, Lcom/amazon/kcp/library/BaseAZScrubber;->DEFAULT_STARTING_LETTERS:[Ljava/lang/String;

    array-length v2, v1

    iget v3, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->scrubberLetterHeight:I

    mul-int v2, v2, v3

    array-length v1, v1

    mul-int p2, p2, v1

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v2, p2

    int-to-double v1, v2

    iput-wide v1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->totalLetterHeight:D

    .line 308
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le p2, v1, :cond_0

    .line 309
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v0

    .line 310
    iget p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->bottomBarHeight:I

    sub-int/2addr p1, p2

    int-to-double p1, p1

    iget-wide v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->totalLetterHeight:D

    :goto_0
    sub-double/2addr p1, v0

    double-to-int p1, p1

    return p1

    .line 312
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v0

    .line 313
    iget p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->bottomBarHeight:I

    sub-int/2addr p1, p2

    int-to-double p1, p1

    iget-wide v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->totalLetterHeight:D

    sub-double/2addr p1, v0

    iget v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->statusBarHeight:I

    int-to-double v0, v0

    sub-double/2addr p1, v0

    iget v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->navigationBarHeight:I

    int-to-double v0, v0

    goto :goto_0
.end method

.method protected highlightLetter(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 585
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 586
    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->azscrubber_letter_selected_color:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/android/util/UIUtils;->getThemedColor(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    iput p1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->lastHighlightedChildIndex:I

    :cond_0
    return-void
.end method

.method public refreshData(Ljava/util/List;[III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[III)V"
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/BaseAZScrubber;->findStartPositionForSections([I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->startingPositions:[I

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/BaseAZScrubber;->findStartingIndicesForIndexTitles(Ljava/util/List;[I)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->startingIndices:Ljava/util/HashMap;

    .line 331
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 332
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->startingIndices:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->enabledLetters:Ljava/util/List;

    .line 333
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/BaseAZScrubber;->setScrubberLetters(Ljava/util/List;)V

    .line 334
    iget-object p1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->startingIndices:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->numLetters:I

    if-ltz p4, :cond_0

    .line 336
    invoke-virtual {p0, p4}, Lcom/amazon/kcp/library/BaseAZScrubber;->setHighlightedLetter(I)V

    :cond_0
    return-void
.end method

.method public resetLastHighlightedLetter()V
    .locals 3

    .line 595
    iget v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->lastHighlightedChildIndex:I

    if-ltz v0, :cond_0

    .line 597
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 598
    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->azscrubber_letter_enabled_color:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/android/util/UIUtils;->getThemedColor(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method protected scrubberFitsInLargeScreen(Landroid/content/Context;)Z
    .locals 3

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->az_scrubber_text_max_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->letterPadding:I

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/BaseAZScrubber;->getSpaceRemainingWithAZScrubber(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    return v1

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->az_scrubber_text_min_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->letterPadding:I

    .line 229
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/BaseAZScrubber;->getSpaceRemainingWithAZScrubber(Landroid/content/Context;I)I

    move-result p1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected scrubberFitsInSmallScreen(Landroid/content/Context;)Z
    .locals 2

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->az_scrubber_text_min_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->letterPadding:I

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/BaseAZScrubber;->getSpaceRemainingWithAZScrubber(Landroid/content/Context;I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setHighlightedLetter(I)V
    .locals 6

    .line 539
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->indicesToLetters:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 542
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 544
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, p1, :cond_0

    .line 545
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, p1, v5

    if-nez v5, :cond_1

    .line 547
    iget-object p1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->indicesToLetters:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 548
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityContentPosition:I

    goto :goto_1

    :cond_1
    if-ge v5, v1, :cond_0

    .line 555
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 556
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityContentPosition:I

    move-object v2, v1

    move v1, v5

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 561
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->allStartingLetters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "#"

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->allStartingLetters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 568
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/BaseAZScrubber;->highlightLetter(I)V

    :cond_4
    return-void
.end method

.method public setOnTouchListener(Lcom/amazon/kcp/library/BaseAZScrubber$ScrubberOnTouchListener;)V
    .locals 1

    .line 476
    new-instance v0, Lcom/amazon/kcp/library/BaseAZScrubber$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/BaseAZScrubber$1;-><init>(Lcom/amazon/kcp/library/BaseAZScrubber;Lcom/amazon/kcp/library/BaseAZScrubber$ScrubberOnTouchListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setScrubberLetters(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->enabledLetterSet:Ljava/util/List;

    const/4 v0, 0x0

    .line 425
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 426
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 427
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    sget v2, Lcom/amazon/kindle/librarymodule/R$attr;->azscrubber_letter_enabled_color:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/android/util/UIUtils;->getThemedColor(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    iget-object v2, p0, Lcom/amazon/kcp/library/BaseAZScrubber;->enabledLetterSet:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 431
    :cond_0
    sget v2, Lcom/amazon/kindle/librarymodule/R$attr;->azscrubber_letter_disabled_color:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/android/util/UIUtils;->getThemedColor(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setScrubberVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 441
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
