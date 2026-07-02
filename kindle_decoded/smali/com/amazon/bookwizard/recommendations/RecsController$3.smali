.class Lcom/amazon/bookwizard/recommendations/RecsController$3;
.super Ljava/lang/Object;
.source "RecsController.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/recommendations/RecsController;->downloadRecommendations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/recommendations/RecsController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/recommendations/RecsController;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$3;->this$0:Lcom/amazon/bookwizard/recommendations/RecsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 272
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsController$3;->this$0:Lcom/amazon/bookwizard/recommendations/RecsController;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/BookWizardController;->postNetworkFailureDialog()V

    return-void
.end method
