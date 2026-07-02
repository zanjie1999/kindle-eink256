.class public Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;
.super Landroid/os/AsyncTask;
.source "URLImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/URLImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageGetterAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private source:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/klo/URLImageParser;

.field urlDrawable:Lcom/amazon/klo/URLDrawable;


# direct methods
.method public constructor <init>(Lcom/amazon/klo/URLImageParser;Lcom/amazon/klo/URLDrawable;Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;->this$0:Lcom/amazon/klo/URLImageParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;->urlDrawable:Lcom/amazon/klo/URLDrawable;

    .line 214
    iput-object p3, p0, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;->this$0:Lcom/amazon/klo/URLImageParser;

    iget-object v0, p0, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/klo/URLImageParser;->access$000(Lcom/amazon/klo/URLImageParser;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;->this$0:Lcom/amazon/klo/URLImageParser;

    iget-object v1, p0, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;->source:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;->urlDrawable:Lcom/amazon/klo/URLDrawable;

    invoke-static {v0, v1, v2, p1}, Lcom/amazon/klo/URLImageParser;->access$100(Lcom/amazon/klo/URLImageParser;Ljava/lang/String;Lcom/amazon/klo/URLDrawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 206
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/URLImageParser$ImageGetterAsyncTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
