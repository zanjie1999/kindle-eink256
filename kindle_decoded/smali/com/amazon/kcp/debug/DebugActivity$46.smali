.class Lcom/amazon/kcp/debug/DebugActivity$46;
.super Landroid/os/AsyncTask;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onConvertAnnotation(Landroid/view/View;)V
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
        "Ljava/util/List<",
        "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;

.field final synthetic val$sourceAnnotations:Ljava/util/List;

.field final synthetic val$sourceContent:Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

.field final synthetic val$targetContent:Lcom/amazon/kindle/annotationconversion/ContentIdentifier;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;Ljava/util/List;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;)V
    .locals 0

    .line 2973
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$46;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    iput-object p2, p0, Lcom/amazon/kcp/debug/DebugActivity$46;->val$sourceAnnotations:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kcp/debug/DebugActivity$46;->val$sourceContent:Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    iput-object p4, p0, Lcom/amazon/kcp/debug/DebugActivity$46;->val$targetContent:Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2973
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$46;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
            ">;"
        }
    .end annotation

    .line 2977
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationConversionService()Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity$46;->val$sourceAnnotations:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$46;->val$sourceContent:Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity$46;->val$targetContent:Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    new-instance v3, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;

    invoke-direct {v3}, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;-><init>()V

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;->convert(Ljava/util/List;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2980
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Annotation conversion failed"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2973
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$46;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2988
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$46;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    const-string v1, "Annotation conversion failed, see logs for details"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2989
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2991
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity$46;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
