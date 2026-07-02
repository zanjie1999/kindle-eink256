.class Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;
.super Ljava/lang/Object;
.source "CurlMeshTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastKnownCurl"
.end annotation


# instance fields
.field curlDir:Landroid/graphics/PointF;

.field curlPos:Landroid/graphics/PointF;

.field radius:D

.field rawPointerPos:Landroid/graphics/PointF;

.field startingPos:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;)V

    return-void
.end method
