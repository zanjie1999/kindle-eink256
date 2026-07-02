.class Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;
.super Ljava/lang/Object;
.source "KSOScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->updateUI(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

.field final synthetic val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    iput-object p2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 117
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {p1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$000(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "click_campaign"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/specialOffer/IKSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 119
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 123
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {p1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$300(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)V

    .line 126
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$400(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getOpenInStore()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getOpenInStore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x36758e

    if-eq v4, v5, :cond_1

    const v5, 0x5cb1923

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "false"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getLink()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 138
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getAdType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x66d649df

    if-eq v4, v5, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, "miaozhen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    goto :goto_4

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-static {v0, p1}, Lcom/amazon/kindle/specialOffer/KSOMiaoZhenHelper;->getClickURL(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    :goto_4
    move v3, v2

    .line 148
    :goto_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz v3, :cond_9

    .line 150
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 150
    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_6

    :cond_9
    const-string v1, "android.intent.action.VIEW"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 155
    iget-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {p1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$000(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;->val$metadata:Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "click_external_campaign"

    invoke-interface {p1, v1, v2}, Lcom/amazon/kindle/specialOffer/IKSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_6
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    :cond_a
    return-void
.end method
