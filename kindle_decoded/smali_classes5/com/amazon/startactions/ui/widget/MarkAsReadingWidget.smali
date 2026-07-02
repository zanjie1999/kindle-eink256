.class public Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "MarkAsReadingWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;,
        Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;,
        Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final IGNORE_WINDOW_MS:J = 0x7530L

.field private static final PROFILE_LINK_KEY_AMAZON:Ljava/lang/String; = "amazon"

.field private static final RESPONSE_NAME_KEY:Ljava/lang/String; = "name"

.field private static final RESPONSE_SHELF_KEY:Ljava/lang/String; = "shelf"

.field private static final SHELF_CURRENTLY_READING:Ljava/lang/String; = "currently-reading"

.field private static final SHELF_MISSING:Ljava/lang/String; = "no-shelf"

.field private static final SHELF_READ:Ljava/lang/String; = "read"

.field private static final SHELF_TO_READ:Ljava/lang/String; = "to-read"

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.MarkAsReadingWidget"


# instance fields
.field private asyncTask:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;

.field private isMarked:Z

.field private localShelf:Ljava/lang/String;

.field private markButton:Landroid/widget/Button;

.field private markError:Landroid/widget/TextView;

.field private final profileLink:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private savedTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 105
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->profileLink:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markError:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Landroid/widget/Button;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->configureUnmarked(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->asyncTask:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->configureMarked()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Ljava/util/Map;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->profileLink:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->isMarked:Z

    return p0
.end method

.method private configureMarked()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_mark_as_reading_button_marked:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private configureUnmarked(Z)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markError:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 260
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_mark_as_reading_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;)Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;
    .locals 2

    .line 88
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 90
    sget-object p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->TAG:Ljava/lang/String;

    const-string v0, "A Goodreads account is not linked, invalidating MarkAsReadingWidget."

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_1
    new-instance v0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;

    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getProfileLink()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 159
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_mark_as_reading:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 162
    sget p2, Lcom/amazon/kindle/ea/R$id;->goodreads_logo_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 163
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_goodreads_logo:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    sget p2, Lcom/amazon/kindle/ea/R$id;->startactions_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 167
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 170
    sget p2, Lcom/amazon/kindle/ea/R$id;->mark_as_reading_error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markError:Landroid/widget/TextView;

    .line 171
    sget p2, Lcom/amazon/kindle/ea/R$id;->mark_as_reading_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markButton:Landroid/widget/Button;

    .line 172
    new-instance v0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$MarkAsReadingClickListener;-><init>(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$1;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markButton:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_secondary_button:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markButton:Landroid/widget/Button;

    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_secondary_button_text_color:I

    .line 175
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 174
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 178
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isSocialNetworkBlocked()Z

    move-result p2

    const/4 v0, 0x1

    const-string v2, "MarkAsCurrentlyReadingDisabled"

    if-eqz p2, :cond_0

    .line 179
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->markButton:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    .line 181
    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p2, v1, v0}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-object p1

    .line 187
    :cond_0
    iget-boolean p2, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->isMarked:Z

    if-eqz p2, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->configureMarked()V

    .line 189
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p2

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 192
    :cond_1
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p2

    .line 195
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->savedTime:Ljava/lang/Long;

    const-string v2, "]"

    if-eqz v0, :cond_4

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 197
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->savedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7530

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    .line 198
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 199
    sget-object p2, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "don\'t request a goodreads shelf update [timeSinceMarked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->savedTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 207
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "startactions.gr.pending"

    invoke-static {v3, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->deletePreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_6

    .line 213
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 214
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    sget-object v0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query goodreads to see if we need to update [localShelf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->localShelf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isWifiConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_5
    new-instance v0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;-><init>(Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->asyncTask:Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget$GoodreadsShelfAsyncTask;

    new-array p2, v1, [Ljava/lang/Void;

    .line 219
    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 222
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    .line 223
    iget-boolean v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->isMarked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "MarkAsReadingDisabled"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsMarkAsReadingWidget"

    invoke-interface {v0, v1, p2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ClickedMarkAsCurrentlyReading"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "MarkAsCurrentlyReadingDisabled"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "MarkAsCurrentlyReadingSucceeded"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedMarkAsReading"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 241
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "DisplayedMarkAsReadingWidget"

    .line 243
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    .line 247
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getStartActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v0

    const-string v1, "DisplayedWidget"

    const-string v2, "MarkAsReading"

    .line 248
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 6

    .line 119
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->TAG:Ljava/lang/String;

    const-string v1, "Current book is null; will use sidecar\'s given shelf value"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "startactions.gr.pending"

    .line 129
    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->savedTime:Ljava/lang/Long;

    :cond_1
    const-string/jumbo v1, "startactions.gr.shelf"

    .line 136
    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->localShelf:Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_2

    .line 138
    sget-object v1, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reading shelf states. [localShelf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->localShelf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->localShelf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "currently-reading"

    if-nez v1, :cond_4

    .line 141
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    sget-object v1, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local shelf state found for book, using local shelf state [asin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shelf="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->localShelf:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->localShelf:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->isMarked:Z

    goto :goto_2

    .line 148
    :cond_4
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    sget-object v1, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no local shelf state found for book, using sidecar shelf state [asin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v1, v0

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->shelves:Ljava/util/List;

    .line 153
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/startactions/ui/widget/MarkAsReadingWidget;->isMarked:Z

    :goto_2
    return-void
.end method

.method public prepareData()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v1, v0

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    if-eqz v1, :cond_0

    .line 112
    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->asin:Ljava/lang/String;

    const-string/jumbo v1, "startactions.gr.shelf"

    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->deletePreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
