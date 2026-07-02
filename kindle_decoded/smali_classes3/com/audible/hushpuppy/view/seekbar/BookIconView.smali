.class public final Lcom/audible/hushpuppy/view/seekbar/BookIconView;
.super Lcom/amazon/kindle/krx/ui/ColorCodedView;
.source "BookIconView.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final bookIcon:Landroid/widget/ImageView;

.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/seekbar/BookIconView;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/seekbar/BookIconView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V
    .locals 2

    .line 67
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/krx/ui/ColorCodedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object p1, p0, Lcom/audible/hushpuppy/view/seekbar/BookIconView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 70
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/seekbar/BookIconView;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/audible/hushpuppy/view/seekbar/BookIconView;->inflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object p3, p0, Lcom/audible/hushpuppy/view/seekbar/BookIconView;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 74
    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->seek_bar_icon:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->seek_bar_icon:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/audible/hushpuppy/view/seekbar/BookIconView;->bookIcon:Landroid/widget/ImageView;

    .line 77
    new-instance p3, Lcom/audible/hushpuppy/view/seekbar/BookIconView$1;

    invoke-direct {p3, p0, p2}, Lcom/audible/hushpuppy/view/seekbar/BookIconView$1;-><init>(Lcom/audible/hushpuppy/view/seekbar/BookIconView;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getBookIconForBlackColor()I
    .locals 1

    .line 117
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_book_white:I

    return v0
.end method

.method private getBookIconForOtherColor()I
    .locals 1

    .line 108
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_book_black:I

    return v0
.end method


# virtual methods
.method public setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 89
    sget-object v0, Lcom/audible/hushpuppy/view/seekbar/BookIconView$2;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/audible/hushpuppy/view/seekbar/BookIconView;->bookIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/audible/hushpuppy/view/seekbar/BookIconView;->getBookIconForOtherColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/seekbar/BookIconView;->bookIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/audible/hushpuppy/view/seekbar/BookIconView;->getBookIconForBlackColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
