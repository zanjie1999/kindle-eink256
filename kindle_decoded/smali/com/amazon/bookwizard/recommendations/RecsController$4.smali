.class Lcom/amazon/bookwizard/recommendations/RecsController$4;
.super Ljava/util/HashMap;
.source "RecsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/recommendations/RecsController;->onDownloadClicked(Lcom/amazon/bookwizard/data/Recommendation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/recommendations/RecsController;

.field final synthetic val$isSelected:Z


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/recommendations/RecsController;Z)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$4;->this$0:Lcom/amazon/bookwizard/recommendations/RecsController;

    iput-boolean p2, p0, Lcom/amazon/bookwizard/recommendations/RecsController$4;->val$isSelected:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 295
    iget-boolean p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$4;->val$isSelected:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "IsSampleToBeDownloaded"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
