.class public Lcom/amazon/kindle/library/widget/AllDownloadToggle;
.super Lcom/amazon/kindle/library/widget/DownloadedToggle;
.source "AllDownloadToggle.java"


# static fields
.field private static final ALL_BUTTON_ID:I

.field private static final DOWNLOADED_BUTTON_ID:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private decoratedOnToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

.field private onToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

.field private toggleButtonTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->TAG:Ljava/lang/String;

    .line 29
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle_all:I

    sput v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->ALL_BUTTON_ID:I

    .line 30
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle_downloaded:I

    sput v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->DOWNLOADED_BUTTON_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/widget/DownloadedToggle;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;-><init>(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)V

    iput-object p1, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->decoratedOnToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    .line 52
    new-instance p1, Lcom/amazon/kindle/library/widget/AllDownloadToggle$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle$2;-><init>(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)V

    iput-object p1, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->toggleButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 90
    invoke-direct {p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->initToggleSettings()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/library/widget/DownloadedToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;-><init>(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)V

    iput-object p1, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->decoratedOnToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    .line 52
    new-instance p1, Lcom/amazon/kindle/library/widget/AllDownloadToggle$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle$2;-><init>(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)V

    iput-object p1, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->toggleButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 95
    invoke-direct {p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->initToggleSettings()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/library/widget/DownloadedToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p1, Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;-><init>(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)V

    iput-object p1, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->decoratedOnToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    .line 52
    new-instance p1, Lcom/amazon/kindle/library/widget/AllDownloadToggle$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle$2;-><init>(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)V

    iput-object p1, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->toggleButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 100
    invoke-direct {p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->initToggleSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/library/widget/AllDownloadToggle;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->setToggleButtonTypeface(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->onToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initToggleSettings()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->decoratedOnToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    invoke-super {p0, v0}, Lcom/amazon/kindle/library/widget/DownloadedToggle;->setOnToggleListener(Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;)V

    .line 105
    invoke-direct {p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->setOnTouchListener()V

    .line 106
    invoke-direct {p0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->setContentDescription()V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 108
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle_downloaded:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sort_filter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    :cond_0
    return-void
.end method

.method private setContentDescription()V
    .locals 3

    .line 113
    sget v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->ALL_BUTTON_ID:I

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->kindle_downloaded_toggle_all:I

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->library_toggle_all_description:I

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->setContentDescriptionOnToggleBtn(III)V

    .line 115
    sget v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->DOWNLOADED_BUTTON_ID:I

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->kindle_downloaded_toggle_downloaded:I

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->library_toggle_downloaded_description:I

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->setContentDescriptionOnToggleBtn(III)V

    return-void
.end method

.method private setContentDescriptionOnToggleBtn(III)V
    .locals 1

    .line 120
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 123
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isSamsungTalkbackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setOnTouchListener()V
    .locals 3

    .line 74
    sget v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->ALL_BUTTON_ID:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    sget v1, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->DOWNLOADED_BUTTON_ID:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 78
    iget-object v2, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->toggleButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->toggleButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private setToggleButtonTypeface(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 158
    sget v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->ALL_BUTTON_ID:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->DOWNLOADED_BUTTON_ID:I

    :goto_0
    if-eqz p1, :cond_1

    .line 159
    sget p1, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->DOWNLOADED_BUTTON_ID:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->ALL_BUTTON_ID:I

    .line 161
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 164
    instance-of v1, v0, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    .line 166
    check-cast v0, Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 167
    check-cast p1, Landroid/widget/ToggleButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 2

    .line 142
    sget v0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->ALL_BUTTON_ID:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    sget v1, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->DOWNLOADED_BUTTON_ID:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setOnToggleListener(Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->onToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    return-void
.end method
