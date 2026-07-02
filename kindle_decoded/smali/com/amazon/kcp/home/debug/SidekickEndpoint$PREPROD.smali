.class final Lcom/amazon/kcp/home/debug/SidekickEndpoint$PREPROD;
.super Lcom/amazon/kcp/home/debug/SidekickEndpoint;
.source "SidekickSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/debug/SidekickEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PREPROD"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "http"

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getAuthority(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "marketplace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object p1, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Utils.getFactory().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getGammaEndpoint()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->US:Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
