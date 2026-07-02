.class Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController$1;
.super Ljava/lang/Object;
.source "LibraryCEBannerContentController.java"

# interfaces
.implements Lcom/amazon/nwstd/resources/IDynamicResourcesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController$1;->this$0:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceAdd(Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController$1;->this$0:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->onResourceAdded(Lcom/amazon/nwstd/resources/DynamicResource;)V

    return-void
.end method

.method public onResourceRemoved(Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController$1;->this$0:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->onResourceRemoved(Lcom/amazon/nwstd/resources/DynamicResource;)V

    return-void
.end method
