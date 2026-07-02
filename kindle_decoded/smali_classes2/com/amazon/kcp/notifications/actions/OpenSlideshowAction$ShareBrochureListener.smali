.class Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$ShareBrochureListener;
.super Ljava/lang/Object;
.source "OpenSlideshowAction.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShareBrochureListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$ShareBrochureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 0

    return-void
.end method

.method public performAction(Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;)V
    .locals 1

    .line 138
    check-cast p1, Lcom/amazon/kcp/ui/brochure/TextImageShareableBrochureSlide;

    .line 141
    invoke-virtual {p1}, Lcom/amazon/kcp/ui/brochure/TextImageShareableBrochureSlide;->getSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getBrochureShareType()Lcom/amazon/kcp/info/brochure/BrochureShareType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/info/brochure/BrochureShareActionFactory;->getShareAction(Lcom/amazon/kcp/info/brochure/BrochureShareType;)Lcom/amazon/kcp/info/brochure/IBrochureShareAction;

    move-result-object v0

    .line 145
    invoke-interface {v0, p1}, Lcom/amazon/kcp/info/brochure/IBrochureShareAction;->share(Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;)V

    return-void
.end method
