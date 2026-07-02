.class public Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;
.super Landroid/widget/LinearLayout;
.source "ReaderTextSizesOptionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_FONT_SIZE_INDEX:I

.field private static final METRICS_CLASS:Ljava/lang/String; = "TextSizesOptionsView"

.field private static final METRICS_EVENT_FONT_SIZE_10_CLICKED:Ljava/lang/String; = "FontSizeTenClicked"

.field private static final METRICS_EVENT_FONT_SIZE_11_CLICKED:Ljava/lang/String; = "FontSizeElevenClicked"

.field private static final METRICS_EVENT_FONT_SIZE_12_CLICKED:Ljava/lang/String; = "FontSizeTwelveClicked"

.field private static final METRICS_EVENT_FONT_SIZE_1_CLICKED:Ljava/lang/String; = "FontSizeOneClicked"

.field private static final METRICS_EVENT_FONT_SIZE_2_CLICKED:Ljava/lang/String; = "FontSizeTwoClicked"

.field private static final METRICS_EVENT_FONT_SIZE_3_CLICKED:Ljava/lang/String; = "FontSizeThreeClicked"

.field private static final METRICS_EVENT_FONT_SIZE_4_CLICKED:Ljava/lang/String; = "FontSizeFourClicked"

.field private static final METRICS_EVENT_FONT_SIZE_5_CLICKED:Ljava/lang/String; = "FontSizeFiveClicked"

.field private static final METRICS_EVENT_FONT_SIZE_6_CLICKED:Ljava/lang/String; = "FontSizeSixClicked"

.field private static final METRICS_EVENT_FONT_SIZE_7_CLICKED:Ljava/lang/String; = "FontSizeSevenClicked"

.field private static final METRICS_EVENT_FONT_SIZE_8_CLICKED:Ljava/lang/String; = "FontSizeEightClicked"

.field private static final METRICS_EVENT_FONT_SIZE_9_CLICKED:Ljava/lang/String; = "FontSizeNineClicked"

.field private static final METRICS_EVENT_FONT_SIZE_UNKNOWN_CLICKED:Ljava/lang/String; = "FontSizeUnknownClicked"

.field private static final MIN_FONT_SIZE_INDEX:I

.field private static final eventArray:[Ljava/lang/String;


# instance fields
.field private fontSizeDecrease:Landroid/view/View;

.field private fontSizeIncrease:Landroid/view/View;

.field private fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "FontSizeOneClicked"

    const-string v1, "FontSizeTwoClicked"

    const-string v2, "FontSizeThreeClicked"

    const-string v3, "FontSizeFourClicked"

    const-string v4, "FontSizeFiveClicked"

    const-string v5, "FontSizeSixClicked"

    const-string v6, "FontSizeSevenClicked"

    const-string v7, "FontSizeEightClicked"

    const-string v8, "FontSizeNineClicked"

    const-string v9, "FontSizeTenClicked"

    const-string v10, "FontSizeElevenClicked"

    const-string v11, "FontSizeTwelveClicked"

    .line 46
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->eventArray:[Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->MAX_FONT_SIZE_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    .line 73
    const-class p2, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method private publishEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private speakFontSize(ILandroid/view/View;)V
    .locals 5

    .line 177
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->speak_font_size_set:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    .line 178
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method

.method private updateFontSizeButtons(IZ)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 109
    sget p2, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->MAX_FONT_SIZE_INDEX:I

    if-ne p1, p2, :cond_0

    .line 110
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeIncrease:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeDecrease:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 113
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeDecrease:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeDecrease:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeIncrease:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 120
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeIncrease:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 130
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/amazon/kindle/krl/R$id;->font_size_decrease:I

    const-string v3, "FontSizeUnknownClicked"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v1

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 137
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setFontSizeIndex(I)V

    .line 138
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->speakFontSize(ILandroid/view/View;)V

    .line 140
    sget-object p1, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->eventArray:[Ljava/lang/String;

    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 141
    aget-object v3, p1, v1

    .line 147
    :cond_0
    new-instance p1, Lcom/amazon/kcp/reader/FontSizeChangeEvent;

    sget-object v0, Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;->DECREASE:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/reader/FontSizeChangeEvent;-><init>(Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->publishEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/amazon/kindle/krl/R$id;->font_size_increase:I

    if-ne v1, v2, :cond_3

    .line 150
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v1

    .line 151
    sget v2, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->MAX_FONT_SIZE_INDEX:I

    if-ge v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setFontSizeIndex(I)V

    .line 154
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->speakFontSize(ILandroid/view/View;)V

    .line 156
    sget-object p1, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->eventArray:[Ljava/lang/String;

    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 157
    aget-object v3, p1, v1

    .line 163
    :cond_2
    new-instance p1, Lcom/amazon/kcp/reader/FontSizeChangeEvent;

    sget-object v0, Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;->INCREASE:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/reader/FontSizeChangeEvent;-><init>(Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->publishEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V

    :goto_0
    move-object v4, v3

    :cond_3
    if-eqz v4, :cond_4

    .line 168
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "TextSizesOptionsView"

    invoke-virtual {p1, v1, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_size_decrease:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeDecrease:Landroid/view/View;

    .line 85
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_size_increase:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeIncrease:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeDecrease:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeIncrease:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->syncSelectedOptions()V

    return-void
.end method

.method public onFontSizeChangeEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 98
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v0

    .line 100
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/FontSizeChangeEvent;->getType()Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;->INCREASE:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->updateFontSizeButtons(IZ)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/FontSizeChangeEvent;->getType()Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;->DECREASE:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->updateFontSizeButtons(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public syncSelectedOptions()V
    .locals 5

    .line 207
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeDecrease:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->fontSizeIncrease:Landroid/view/View;

    sget v4, Lcom/amazon/kcp/reader/ui/ReaderTextSizesOptionsView;->MAX_FONT_SIZE_INDEX:I

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
