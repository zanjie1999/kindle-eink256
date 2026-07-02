.class Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;
.super Ljava/lang/Object;
.source "CurlMeshTransformation.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->setBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;

.field final synthetic val$pageHeight:I

.field final synthetic val$pageWidth:I

.field final synthetic val$view:Lcom/amazon/kindle/pagecurl/CurlView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;IILcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;->this$0:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;

    iput p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;->val$pageWidth:I

    iput p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;->val$pageHeight:I

    iput-object p4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;->val$view:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(ILandroid/graphics/Bitmap;)V
    .locals 7

    .line 1052
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl Mesh Transformation - Set front bitmaploader - Image ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " finished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;->this$0:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;

    iget v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;->val$pageWidth:I

    iget v5, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;->val$pageHeight:I

    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;->val$view:Lcom/amazon/kindle/pagecurl/CurlView;

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->access$200(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V

    return-void
.end method
