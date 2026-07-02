.class Lcom/amazon/bookwizard/ratings/RatingsController$5;
.super Ljava/lang/Object;
.source "RatingsController.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ratings/RatingsController;->downloadRelatedBooks(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ratings/RatingsController;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    return-void
.end method
