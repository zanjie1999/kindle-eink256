.class Lcom/amazon/nwstd/upsell/UpsellController$1;
.super Ljava/lang/Object;
.source "UpsellController.java"

# interfaces
.implements Lcom/amazon/nwstd/resources/IDynamicResourcesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/upsell/UpsellController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/upsell/UpsellController;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/upsell/UpsellController;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/UpsellController$1;->this$0:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceAdd(Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController$1;->this$0:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->onResourceAdded(Lcom/amazon/nwstd/resources/DynamicResource;)V

    return-void
.end method

.method public onResourceRemoved(Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/UpsellController$1;->this$0:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->onResourceRemoved(Lcom/amazon/nwstd/resources/DynamicResource;)V

    return-void
.end method
