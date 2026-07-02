.class Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider$1;
.super Ljava/lang/Object;
.source "KuUpsellBannerDecorationProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionBarDecoration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionBarDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;

.field final synthetic val$bannerInfo:Lcom/amazon/ku/data/KuBannerInfo;


# direct methods
.method constructor <init>(Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;Lcom/amazon/ku/data/KuBannerInfo;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider$1;->this$0:Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;

    iput-object p2, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider$1;->val$bannerInfo:Lcom/amazon/ku/data/KuBannerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 2

    .line 60
    new-instance p1, Lcom/amazon/ku/ui/view/KuUpsellBannerView;

    iget-object v0, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider$1;->this$0:Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;

    invoke-static {v0}, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;->access$000(Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ku/ui/KuUpsellBannerDecorationProvider$1;->val$bannerInfo:Lcom/amazon/ku/data/KuBannerInfo;

    invoke-direct {p1, v0, v1}, Lcom/amazon/ku/ui/view/KuUpsellBannerView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/ku/data/KuBannerInfo;)V

    return-object p1
.end method
