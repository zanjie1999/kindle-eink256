.class Lcom/amazon/kcp/wordwise/gloss/GlossFactory$2;
.super Landroid/os/AsyncTask;
.source "GlossFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openGlossModelForCurrentBookAsync(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/gloss/GlossFactory;Ljava/lang/Runnable;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$2;->this$0:Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    iput-object p2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 335
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 338
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$2;->this$0:Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openGlossModelForCurrentBook()Lcom/amazon/kcp/wordwise/gloss/IGlossModel;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 335
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 344
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossFactory$2;->val$onComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 345
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
