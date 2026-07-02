.class Lcom/amazon/bookwizard/genre/GenreController$5;
.super Ljava/lang/Object;
.source "GenreController.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/genre/GenreController;->downloadGenres()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/genre/GenreController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/genre/GenreController;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazon/bookwizard/genre/GenreController$5;->this$0:Lcom/amazon/bookwizard/genre/GenreController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/amazon/bookwizard/genre/GenreController$5;->this$0:Lcom/amazon/bookwizard/genre/GenreController;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/BookWizardController;->postNetworkFailureDialog()V

    return-void
.end method
