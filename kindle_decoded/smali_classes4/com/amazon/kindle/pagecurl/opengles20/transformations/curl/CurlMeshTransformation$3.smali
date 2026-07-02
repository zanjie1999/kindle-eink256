.class Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;
.super Ljava/lang/Object;
.source "CurlMeshTransformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->onBitmapReady(ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$bitmapID:I

.field final synthetic val$pageHeight:I

.field final synthetic val$pageWidth:I

.field final synthetic val$view:Lcom/amazon/kindle/pagecurl/CurlView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->this$0:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;

    iput p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->val$bitmapID:I

    iput-object p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->val$b:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->val$pageWidth:I

    iput p5, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->val$pageHeight:I

    iput-object p6, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->val$view:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1099
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->this$0:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->val$bitmapID:I

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->val$b:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->val$pageWidth:I

    iget v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->val$pageHeight:I

    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;->val$view:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->access$300(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V

    return-void
.end method
