.class Lcom/amazon/ku/ui/view/KuUpsellBannerView$1;
.super Ljava/lang/Object;
.source "KuUpsellBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/ui/view/KuUpsellBannerView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/ku/data/KuBannerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/ui/view/KuUpsellBannerView;

.field final synthetic val$metadata:Ljava/util/Map;

.field final synthetic val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field final synthetic val$urlPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ku/ui/view/KuUpsellBannerView;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView$1;->this$0:Lcom/amazon/ku/ui/view/KuUpsellBannerView;

    iput-object p2, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p3, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView$1;->val$metadata:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView$1;->val$urlPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 67
    iget-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView$1;->val$metadata:Ljava/util/Map;

    const-string v1, "KuConversionUpsellBanner"

    const-string v2, "KuConversionUpsellBannerSignupClicked"

    invoke-interface {p1, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    iget-object p1, p0, Lcom/amazon/ku/ui/view/KuUpsellBannerView$1;->val$urlPath:Ljava/lang/String;

    const-string v0, "kuconv_kfa_bar_ku_lp"

    invoke-static {p1, v0}, Lcom/amazon/ku/KuStoreManager;->loadKuLandingPage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
