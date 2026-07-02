.class Lcom/amazon/bookwizard/ratings/RatingsController$3;
.super Ljava/lang/Object;
.source "RatingsController.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ratings/RatingsController;->downloadBooksToRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ratings/RatingsController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ratings/RatingsController;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$3;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/amazon/bookwizard/ratings/RatingsController$3;->this$0:Lcom/amazon/bookwizard/ratings/RatingsController;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/BookWizardController;->postNetworkFailureDialog()V

    return-void
.end method
