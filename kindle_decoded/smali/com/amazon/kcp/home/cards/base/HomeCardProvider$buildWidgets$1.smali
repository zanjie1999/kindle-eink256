.class final Lcom/amazon/kcp/home/cards/base/HomeCardProvider$buildWidgets$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeCardProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->buildWidgets(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/home/model/CardData;",
        "Lcom/amazon/kindle/home/card/HomeCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/kcp/home/cards/base/HomeCardProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/cards/base/HomeCardProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider$buildWidgets$1;->this$0:Lcom/amazon/kcp/home/cards/base/HomeCardProvider;

    iput-object p2, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider$buildWidgets$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/card/HomeCard;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Building card for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kcp.home.cards.HomeCardProvider"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider$buildWidgets$1;->this$0:Lcom/amazon/kcp/home/cards/base/HomeCardProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->access$getBuilders$p(Lcom/amazon/kcp/home/cards/base/HomeCardProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/home/card/SidekickCardBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider$buildWidgets$1;->$context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/home/card/SidekickCardBuilder;->build(Landroid/content/Context;Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/card/HomeCard;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/cards/base/HomeCardProvider$buildWidgets$1;->invoke(Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/card/HomeCard;

    move-result-object p1

    return-object p1
.end method
