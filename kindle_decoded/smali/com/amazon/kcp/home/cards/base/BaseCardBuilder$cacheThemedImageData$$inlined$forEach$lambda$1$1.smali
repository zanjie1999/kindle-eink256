.class public final Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1$1;
.super Ljava/lang/Object;
.source "BaseCardBuilder.kt"

# interfaces
.implements Lcom/amazon/kcp/home/util/ImageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_run:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;

.field final synthetic this$0:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1$1;->$this_run:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;

    iput-object p2, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1$1;->this$0:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownloadRequestComplete(Z)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1$1;->$this_run:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1$1;->this$0:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;

    iget-object v2, v1, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$widget$inlined:Lcom/amazon/kindle/home/card/HomeCard;

    iget-object v1, v1, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;->$theme:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p1}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->onThemedImageReady(Lcom/amazon/kindle/home/card/HomeCard;Ljava/lang/String;Z)V

    .line 84
    sget-object p1, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->notifyWidgetsChange$default(Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;ZILjava/lang/Object;)V

    return-void
.end method
