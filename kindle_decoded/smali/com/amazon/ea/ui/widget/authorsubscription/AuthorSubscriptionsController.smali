.class public Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "AuthorSubscriptionsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;,
        Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;,
        Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$SubscribeButtonClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.widget.authorsubscription.AuthorSubscriptionsController"


# instance fields
.field private asinToAffinityButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private final authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 79
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_author_subscription_author_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 79
    invoke-static {p1, v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->forAuthorSubscriptions(Ljava/util/List;I)Lcom/amazon/startactions/storage/ImageBatchDownloader;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Landroid/content/res/Resources;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;Ljava/lang/String;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->configureSubscriptionButton(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method private configureSubscriptionButton(Ljava/lang/String;Z)V
    .locals 5

    .line 201
    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->getAffinityButtonForAsin(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 206
    sget v2, Lcom/amazon/kindle/ea/R$attr;->followingCheck:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/amazon/kindle/ea/R$attr;->amznSmile:I

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 207
    invoke-static {v1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->getResourceAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez v1, :cond_1

    .line 209
    sget-object p2, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource Attributes is empty. Cannot open get styles for follow button"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 214
    sget p2, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_button_following:I

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 215
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 216
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    .line 217
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 216
    invoke-virtual {v0, p2, p1, p1, p1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 219
    :cond_2
    sget p2, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_button_follow:I

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 220
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 221
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    .line 222
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 221
    invoke-virtual {v0, p2, p1, p1, p1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 225
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static getResourceAttributes([I)Landroid/content/res/TypedArray;
    .locals 1

    .line 231
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 233
    sget-object p0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "EndActionsAlreadyClosed"

    invoke-virtual {p0, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;)Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;
    .locals 1

    .line 70
    new-instance v0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;-><init>(Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 107
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->endactions_author_subscription:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 109
    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/amazon/kindle/ea/R$id;->endactions_subscription_hint:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getHideFollowHint()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 115
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 117
    :cond_0
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->anyactions_author_follow_hint_follow:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_1
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 123
    new-array v0, p2, [Landroid/widget/ImageView;

    .line 124
    invoke-static {p2}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->asinToAffinityButtons:Ljava/util/Map;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_3

    .line 128
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    .line 131
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v4}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/ea/R$layout;->endactions_author_subscription_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 133
    sget v5, Lcom/amazon/kindle/ea/R$id;->endactions_subscription_author_name:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 134
    sget v6, Lcom/amazon/kindle/ea/R$id;->endactions_subscription_button:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 135
    sget v7, Lcom/amazon/kindle/ea/R$id;->author_image:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 138
    aput-object v7, v0, v2

    .line 141
    iget-object v7, v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v5, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$SubscribeButtonClickListener;

    iget-object v7, v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    invoke-direct {v5, p0, v7, v6}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$SubscribeButtonClickListener;-><init>(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;Ljava/lang/String;Landroid/widget/Button;)V

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v5, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->asinToAffinityButtons:Ljava/util/Map;

    iget-object v7, v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v5, v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getStoredFollowStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 151
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_3

    :cond_2
    iget-boolean v5, v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    .line 152
    :goto_3
    iget-object v6, v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->configureSubscriptionButton(Ljava/lang/String;Z)V

    .line 155
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v4, 0x2

    .line 157
    invoke-static {v4}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v4

    .line 158
    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v5, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v6, "MetricsTag"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    .line 160
    invoke-static {v3}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getCachedFollowStatus(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "AffinityFollowing"

    .line 159
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v3

    const-string v5, "AnyActionsFollowAuthorWidget"

    invoke-interface {v3, v5, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v4, v3

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v5, "DisplayedFollowAuthorWidget"

    invoke-static {v5, v4, v3}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    .line 147
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 168
    :cond_3
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    new-instance v1, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$1;-><init>(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;[Landroid/widget/ImageView;)V

    invoke-virtual {p2, v1}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->apply(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    .line 180
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 182
    new-instance p2, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$2;

    invoke-direct {p2, p0}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$2;-><init>(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method declared-synchronized getAffinityButtonForAsin(Ljava/lang/String;)Landroid/widget/Button;
    .locals 1

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->asinToAffinityButtons:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 247
    sget-object p1, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->TAG:Ljava/lang/String;

    const-string v0, "asinToAffinityButtons is null"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 248
    monitor-exit p0

    return-object p1

    .line 250
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->asinToAffinityButtons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initMetricsValues()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v1, v0

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedFollowAuthorWidget"

    invoke-static {v2, v1, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->load()V

    .line 92
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    .line 94
    new-instance v2, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    invoke-direct {v2, p0, v1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$GetStatusAsyncTask;-><init>(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareData()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->authorImages:Lcom/amazon/startactions/storage/ImageBatchDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->download()V

    return-void
.end method
