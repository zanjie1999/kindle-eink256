.class Lcom/amazon/bookwizard/recommendations/RecsController$2;
.super Ljava/lang/Object;
.source "RecsController.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/recommendations/RecsController;->downloadRecommendations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/bookwizard/service/GetRecsRequest$RecsView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/recommendations/RecsController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/recommendations/RecsController;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$2;->this$0:Lcom/amazon/bookwizard/recommendations/RecsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/bookwizard/service/GetRecsRequest$RecsView;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsController$2;->this$0:Lcom/amazon/bookwizard/recommendations/RecsController;

    invoke-static {v0}, Lcom/amazon/bookwizard/recommendations/RecsController;->access$000(Lcom/amazon/bookwizard/recommendations/RecsController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/GetRecsRequest$RecsView;->getRecommendations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/data/DataProvider;->setRecommendations(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Lcom/amazon/bookwizard/service/GetRecsRequest$RecsView;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/recommendations/RecsController$2;->onResponse(Lcom/amazon/bookwizard/service/GetRecsRequest$RecsView;)V

    return-void
.end method
