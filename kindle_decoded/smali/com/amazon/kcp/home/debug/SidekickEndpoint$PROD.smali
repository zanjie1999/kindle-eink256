.class final Lcom/amazon/kcp/home/debug/SidekickEndpoint$PROD;
.super Lcom/amazon/kcp/home/debug/SidekickEndpoint;
.source "SidekickSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/debug/SidekickEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PROD"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "https"

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getAuthority(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "marketplace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "marketplace.domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
