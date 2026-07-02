.class public Lcom/amazon/startactions/ui/layout/LayoutResolver;
.super Ljava/lang/Object;
.source "LayoutResolver.java"

# interfaces
.implements Lcom/amazon/startactions/ui/layout/IWidgetProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.layout.LayoutResolver"


# instance fields
.field private final displayLimitPrefs:Landroid/content/SharedPreferences;

.field private final sidecar:Lcom/amazon/ea/sidecar/def/Sidecar;

.field private final widgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/startactions/ui/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/sidecar/def/Sidecar;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->widgets:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->sidecar:Lcom/amazon/ea/sidecar/def/Sidecar;

    .line 92
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "anyactions.displayed.widgets"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->displayLimitPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private displayLimitReached(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)Z
    .locals 4

    .line 249
    iget-object v0, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayLimit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->displayLimitPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 251
    iget v1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayLimit:I

    if-lt v0, v1, :cond_1

    .line 252
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    sget-object v1, Lcom/amazon/startactions/ui/layout/LayoutResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display limit reached [displayKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", displayCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", displayLimit="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayLimit:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static getGoodreadsShelfWidget(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;)Lcom/amazon/startactions/ui/widget/WidgetBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;",
            ")",
            "Lcom/amazon/startactions/ui/widget/WidgetBase<",
            "Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;",
            ">;"
        }
    .end annotation

    .line 273
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->isAutoShelvingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {p0}, Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;)Lcom/amazon/startactions/ui/widget/GoodreadsShelfWidget;

    move-result-object p0

    return-object p0

    .line 276
    :cond_0
    invoke-static {p0}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;)Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    move-result-object p0

    return-object p0
.end method

.method public static getLayout(Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/startactions/ui/layout/Layout;
    .locals 1

    .line 80
    new-instance v0, Lcom/amazon/startactions/ui/layout/LayoutResolver;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/layout/LayoutResolver;-><init>(Lcom/amazon/ea/sidecar/def/Sidecar;)V

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/layout/LayoutResolver;->getLayout()Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object p0

    return-object p0
.end method

.method private tryCreateWidget(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)Lcom/amazon/startactions/ui/widget/Widget;
    .locals 4

    .line 175
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/layout/LayoutResolver;->displayLimitReached(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 176
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display limit reached for widget, invalidating. [id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", displayKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", displayLimit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayLimit:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 183
    :cond_1
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    if-eqz v0, :cond_2

    .line 184
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/ShovelerWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;)Lcom/amazon/startactions/ui/widget/ShovelerWidget;

    move-result-object p1

    return-object p1

    .line 186
    :cond_2
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    if-eqz v0, :cond_3

    .line 187
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    .line 188
    invoke-static {p1}, Lcom/amazon/startactions/ui/layout/LayoutResolver;->getGoodreadsShelfWidget(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;)Lcom/amazon/startactions/ui/widget/WidgetBase;

    move-result-object p1

    return-object p1

    .line 190
    :cond_3
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/GrokTeaserWidgetDef;

    if-eqz v0, :cond_4

    .line 191
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/GrokTeaserWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/GrokTeaserWidgetDef;)Lcom/amazon/startactions/ui/widget/GoodreadsTeaserWidget;

    move-result-object p1

    return-object p1

    .line 193
    :cond_4
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    if-eqz v0, :cond_5

    .line 194
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/TimeToReadWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/TimeToReadWidgetDef;)Lcom/amazon/startactions/ui/widget/TimeToReadWidget;

    move-result-object p1

    return-object p1

    .line 196
    :cond_5
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;

    if-eqz v0, :cond_6

    .line 197
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;)Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    move-result-object p1

    return-object p1

    .line 199
    :cond_6
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    if-eqz v0, :cond_7

    .line 200
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;)Lcom/amazon/startactions/ui/widget/AuthorBioWidget;

    move-result-object p1

    return-object p1

    .line 202
    :cond_7
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;

    if-eqz v0, :cond_8

    .line 203
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/AuthorTextListWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;)Lcom/amazon/startactions/ui/widget/AuthorTextListWidget;

    move-result-object p1

    return-object p1

    .line 205
    :cond_8
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/AudibleWidgetDef;

    if-eqz v0, :cond_9

    .line 206
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AudibleWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/AudibleWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/AudibleWidgetDef;)Lcom/amazon/startactions/ui/widget/AudibleWidget;

    move-result-object p1

    return-object p1

    .line 208
    :cond_9
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;

    if-eqz v0, :cond_a

    .line 209
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/PositionInSeriesWidgetDef;)Lcom/amazon/startactions/ui/widget/PositionInSeriesWidget;

    move-result-object p1

    return-object p1

    .line 211
    :cond_a
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    if-eqz v0, :cond_b

    .line 212
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/BookDetailWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;)Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    move-result-object p1

    return-object p1

    .line 214
    :cond_b
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;

    if-eqz v0, :cond_c

    .line 215
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/SimpleTextWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/SimpleTextWidgetDef;)Lcom/amazon/startactions/ui/widget/SimpleTextWidget;

    move-result-object p1

    return-object p1

    .line 217
    :cond_c
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    if-eqz v0, :cond_d

    .line 218
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;)Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    move-result-object p1

    return-object p1

    .line 220
    :cond_d
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;

    if-eqz v0, :cond_e

    .line 221
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/XrayTeaserWidgetDef;)Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    move-result-object p1

    return-object p1

    .line 223
    :cond_e
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    if-eqz v0, :cond_f

    .line 224
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;)Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    move-result-object p1

    return-object p1

    .line 226
    :cond_f
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    if-eqz v0, :cond_10

    .line 227
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/HeaderWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)Lcom/amazon/startactions/ui/widget/HeaderWidget;

    move-result-object p1

    return-object p1

    .line 229
    :cond_10
    instance-of v0, p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    if-eqz v0, :cond_11

    .line 230
    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)Lcom/amazon/startactions/ui/widget/BookGridWidget;

    move-result-object p1

    return-object p1

    .line 234
    :cond_11
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 235
    sget-object v0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown widget definition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-object v1
.end method


# virtual methods
.method public getLayout()Lcom/amazon/startactions/ui/layout/Layout;
    .locals 10

    .line 103
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->sidecar:Lcom/amazon/ea/sidecar/def/Sidecar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v3

    const/4 v4, 0x2

    .line 106
    invoke-static {v4}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v4

    .line 107
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "HasSidecar"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "StartActions"

    if-nez v0, :cond_2

    .line 110
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->TAG:Ljava/lang/String;

    const-string v1, "Received null sidecar; nothing to process so returning null layout."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-interface {v3, v6, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-object v5

    .line 118
    :cond_2
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    sget-object v0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->TAG:Ljava/lang/String;

    const-string v7, "Generating layouts from defs."

    invoke-static {v0, v7}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->sidecar:Lcom/amazon/ea/sidecar/def/Sidecar;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/Sidecar;->layouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "AllLayoutsRejected"

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;

    .line 122
    iget-object v9, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->sidecar:Lcom/amazon/ea/sidecar/def/Sidecar;

    iget-object v9, v9, Lcom/amazon/ea/sidecar/def/Sidecar;->commonData:Lcom/amazon/ea/sidecar/def/CommonData;

    iget-object v9, v9, Lcom/amazon/ea/sidecar/def/CommonData;->refTagSuffix:Ljava/lang/String;

    invoke-static {v7, p0, v9}, Lcom/amazon/startactions/ui/layout/LayoutFactory;->tryCreateLayout(Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 124
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-interface {v3, v6, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-object v7

    .line 131
    :cond_5
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 132
    sget-object v0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->TAG:Ljava/lang/String;

    const-string v2, "No valid layouts generated.  Returning a null layout."

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {v3, v6, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-object v5
.end method

.method public getWidget(Ljava/lang/String;)Lcom/amazon/startactions/ui/widget/Widget;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->widgets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/startactions/ui/widget/Widget;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->sidecar:Lcom/amazon/ea/sidecar/def/Sidecar;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/Sidecar;->widgetIDToWidget:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    if-eqz v1, :cond_1

    .line 149
    invoke-direct {p0, v1}, Lcom/amazon/startactions/ui/layout/LayoutResolver;->tryCreateWidget(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)Lcom/amazon/startactions/ui/widget/Widget;

    move-result-object v0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/amazon/startactions/ui/layout/LayoutResolver;->widgets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hasWidgets(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-virtual {p0, v0}, Lcom/amazon/startactions/ui/layout/LayoutResolver;->getWidget(Ljava/lang/String;)Lcom/amazon/startactions/ui/widget/Widget;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
