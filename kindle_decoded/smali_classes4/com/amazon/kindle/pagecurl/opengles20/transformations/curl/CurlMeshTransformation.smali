.class public Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;
.super Ljava/lang/Object;
.source "CurlMeshTransformation.java"

# interfaces
.implements Lcom/amazon/kindle/pagecurl/IMesh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;,
        Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;,
        Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;,
        Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;
    }
.end annotation


# instance fields
.field private DRAW_DEBUG_POINTS:Z

.field private DRAW_SHADOW:Z

.field private DRAW_TEXTURE:Z

.field private backBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

.field private backTextureID:I

.field private backVisible:Z

.field private backgroundColor:I

.field private bitmapRecycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

.field private curledEdgePointA:Landroid/graphics/PointF;

.field private curledEdgePointB:Landroid/graphics/PointF;

.field private debugCurlEdgeVertices:Ljava/nio/FloatBuffer;

.field private debugCurlEdgeVerticesCount:I

.field private debugCurlVertices:Ljava/nio/FloatBuffer;

.field private debugCurlVerticesCount:I

.field private debugRotatedVertices:Ljava/nio/FloatBuffer;

.field private debugRotatedVerticesCount:I

.field private debugScanLinesVertices:Ljava/nio/FloatBuffer;

.field private debugScanLinesVerticesCount:I

.field private frontBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

.field private frontTextureID:I

.field private frontVisible:Z

.field private lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

.field private mBackBitmapID:I

.field private mBackTexCoords:Ljava/nio/FloatBuffer;

.field private mBackTextureRect:Landroid/graphics/RectF;

.field private mBitmapBack:Landroid/graphics/Bitmap;

.field private mBitmapFront:Landroid/graphics/Bitmap;

.field private mColors:Ljava/nio/FloatBuffer;

.field private mCurlPositionLines:Ljava/nio/FloatBuffer;

.field private mCurlPositionLinesCount:I

.field private mDisplayFrontImageOnBack:Z

.field private mDropShadowCount:I

.field private mDropShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableBitmapStretching:Z

.field private mFrontBitmapID:I

.field private final mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

.field private mIntersections:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCurlSplits:I

.field private mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

.field private mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfShadowCount:I

.field private mSelfShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowColors:Ljava/nio/FloatBuffer;

.field private mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

.field private mShadowVertices:Ljava/nio/FloatBuffer;

.field private mTempShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;",
            ">;"
        }
    .end annotation
.end field

.field private mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private mTexCoords:Ljava/nio/FloatBuffer;

.field private mTextureRect:Landroid/graphics/RectF;

.field private mVertices:Ljava/nio/FloatBuffer;

.field private mVerticesCountBack:I

.field private mVerticesCountFront:I

.field private pageHeight:I

.field private pageWidth:I

.field private final textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;


# direct methods
.method public constructor <init>(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;ZLcom/amazon/kindle/pagecurl/opengles20/TextureProvider;Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;)V
    .locals 6

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    .line 53
    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_SHADOW:Z

    .line 55
    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    .line 56
    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z

    .line 59
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDisplayFrontImageOnBack:Z

    const/4 v2, 0x4

    new-array v3, v2, [Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 96
    iput-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 100
    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    .line 101
    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    const/4 v3, -0x1

    .line 106
    iput v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backgroundColor:I

    .line 110
    iput v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    .line 111
    iput v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    .line 113
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTextureRect:Landroid/graphics/RectF;

    .line 114
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTextureRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    .line 116
    iput-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 117
    iput-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 132
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mEnableBitmapStretching:Z

    .line 140
    iput-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    .line 157
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointA:Landroid/graphics/PointF;

    .line 158
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointB:Landroid/graphics/PointF;

    .line 175
    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bitmapRecycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    .line 176
    iput-boolean p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mEnableBitmapStretching:Z

    .line 177
    iput-object p5, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    .line 178
    iput-object p6, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    if-ge p1, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    .line 181
    :goto_0
    iput p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    .line 183
    new-instance p2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    add-int/lit8 p1, p1, 0x2

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;I)V

    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    .line 184
    new-instance p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;I)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    .line 185
    new-instance p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-direct {p1, p0, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;I)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    .line 186
    new-instance p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;I)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mIntersections:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    .line 187
    new-instance p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    const/16 p3, 0xb

    invoke-direct {p1, p0, p3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;I)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p3, :cond_1

    .line 189
    iget-object p5, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    new-instance p6, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    invoke-direct {p6, p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;)V

    invoke-virtual {p5, p6}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-ge p1, v2, :cond_2

    .line 196
    iget-object p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    new-instance p5, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    invoke-direct {p5, p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;)V

    aput-object p5, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object p3, p1, v0

    aget-object p5, p1, v1

    aget-object p6, p1, v1

    const/4 v1, 0x3

    aget-object v3, p1, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    iput-wide v4, p6, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    iput-wide v4, p5, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    iput-wide v4, p3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    .line 201
    aget-object p3, p1, v0

    aget-object p5, p1, p2

    aget-object p6, p1, p2

    aget-object p1, p1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    iput-wide v3, p6, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    iput-wide v3, p5, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    iput-wide v3, p3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    .line 207
    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x6

    mul-int/lit8 p2, p1, 0x3

    mul-int/lit8 p2, p2, 0x4

    .line 208
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 209
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 210
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVertices:Ljava/nio/FloatBuffer;

    .line 211
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x4

    .line 213
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 214
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 215
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mColors:Ljava/nio/FloatBuffer;

    .line 216
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 218
    iput-object p4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    .line 220
    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    .line 221
    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    .line 223
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->initializeOptionalPoints()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->onBitmapReady(ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->unsafeOnBitmapReady(ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V

    return-void
.end method

.method private addRotatedVertex(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V
    .locals 3

    .line 1468
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    if-eqz v0, :cond_0

    .line 1469
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVerticesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVerticesCount:I

    .line 1470
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1471
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1472
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_0
    return-void
.end method

.method private addScanLinesVertex(DDD)V
    .locals 1

    .line 1489
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    if-eqz v0, :cond_0

    .line 1490
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVerticesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVerticesCount:I

    .line 1491
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVertices:Ljava/nio/FloatBuffer;

    double-to-float p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1492
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVertices:Ljava/nio/FloatBuffer;

    double-to-float p2, p3

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1493
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVertices:Ljava/nio/FloatBuffer;

    double-to-float p2, p5

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_0
    return-void
.end method

.method private addUntranslatedVertex(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V
    .locals 3

    .line 1480
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    if-eqz v0, :cond_0

    .line 1481
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVerticesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVerticesCount:I

    .line 1482
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1483
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1484
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_0
    return-void
.end method

.method private bindBackTexture()V
    .locals 5

    .line 1245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1246
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Curl Mesh Transformation - Binding back texture - Start manipulating back texture"

    .line 1247
    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1248
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->generateTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    .line 1249
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bitmapRecycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;->recycle(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 1250
    iput-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    .line 1251
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl Mesh Transformation - Binding back texture - [Perf Measurment] End manipulating back texture. Time taken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private bindFrontTexture()V
    .locals 5

    .line 1234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1235
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Curl Mesh Transformation - Binding front texture - Start manipulating front texture"

    .line 1236
    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1237
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->generateTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    .line 1238
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bitmapRecycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;->recycle(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 1239
    iput-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    .line 1240
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl Mesh Transformation - Binding front texture - [Perf Measurment] End manipulating front texture. Time taken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getBackgroundBleuComponent()F
    .locals 2

    .line 1849
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getBackgroundGreenComponent()F
    .locals 2

    .line 1844
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getBackgroundRedComponent()F
    .locals 2

    .line 1839
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getIntersections(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;[[ID)Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;",
            ">;[[ID)",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array<",
            "Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1502
    iget-object v5, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mIntersections:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v5}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->clear()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1505
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_3

    .line 1506
    aget-object v7, v2, v6

    aget v7, v7, v5

    invoke-virtual {v1, v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 1507
    aget-object v8, v2, v6

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v1, v8}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 1510
    iget-wide v9, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    cmpl-double v11, v9, v3

    if-lez v11, :cond_2

    iget-wide v11, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    cmpg-double v13, v11, v3

    if-gez v13, :cond_2

    sub-double v13, v3, v11

    sub-double/2addr v9, v11

    div-double/2addr v13, v9

    .line 1514
    iget-object v9, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v9, v5}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 1515
    invoke-virtual {v9, v8}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->set(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V

    .line 1516
    iput-wide v3, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    .line 1517
    iget-wide v10, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    move v15, v6

    iget-wide v5, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    iget-wide v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    sub-double/2addr v5, v1

    mul-double v5, v5, v13

    add-double/2addr v10, v5

    iput-wide v10, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    .line 1518
    iget-boolean v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    if-eqz v1, :cond_0

    .line 1519
    iget-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    iget-wide v5, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    iget-wide v10, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    sub-double/2addr v5, v10

    mul-double v5, v5, v13

    add-double/2addr v1, v5

    iput-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    .line 1520
    iget-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    iget-wide v5, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    iget-wide v10, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    sub-double/2addr v5, v10

    mul-double v5, v5, v13

    add-double/2addr v1, v5

    iput-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    .line 1522
    iget-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    iget-wide v5, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    iget-wide v10, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    sub-double/2addr v5, v10

    mul-double v5, v5, v13

    add-double/2addr v1, v5

    iput-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    .line 1523
    iget-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    iget-wide v5, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    iget-wide v10, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    sub-double/2addr v5, v10

    mul-double v5, v5, v13

    add-double/2addr v1, v5

    iput-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    .line 1525
    :cond_0
    iget-boolean v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_SHADOW:Z

    if-eqz v1, :cond_1

    .line 1526
    iget-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    iget-wide v5, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    iget-wide v10, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    sub-double/2addr v5, v10

    mul-double v5, v5, v13

    add-double/2addr v1, v5

    iput-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    .line 1527
    iget-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    iget-wide v5, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    iget-wide v7, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    sub-double/2addr v5, v7

    mul-double v5, v5, v13

    add-double/2addr v1, v5

    iput-wide v1, v9, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    .line 1529
    :cond_1
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mIntersections:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v9}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v15, v6

    :goto_1
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1532
    :cond_3
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mIntersections:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    return-object v1
.end method

.method private initializeOptionalPoints()V
    .locals 7

    .line 227
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x6

    .line 229
    iget-boolean v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_SHADOW:Z

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    .line 230
    new-instance v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;I)V

    iput-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    .line 232
    new-instance v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;I)V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    .line 234
    new-instance v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;I)V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    const/4 v0, 0x0

    .line 236
    :goto_0
    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    new-instance v5, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;)V

    invoke-virtual {v2, v5}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 242
    iput v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLinesCount:I

    const/4 v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 244
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 245
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 246
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    .line 247
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 249
    iput v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVerticesCount:I

    .line 250
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLinesCount:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 251
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 252
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVertices:Ljava/nio/FloatBuffer;

    .line 254
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 257
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVertices:Ljava/nio/FloatBuffer;

    .line 259
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 262
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 263
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVertices:Ljava/nio/FloatBuffer;

    .line 264
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v0, v1, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 266
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 267
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVertices:Ljava/nio/FloatBuffer;

    .line 269
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 272
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x4

    .line 274
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 275
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 276
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTexCoords:Ljava/nio/FloatBuffer;

    .line 277
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 280
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 281
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 282
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTexCoords:Ljava/nio/FloatBuffer;

    .line 283
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 286
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_SHADOW:Z

    if-eqz v0, :cond_3

    .line 287
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x4

    .line 289
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 290
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 291
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowColors:Ljava/nio/FloatBuffer;

    .line 292
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 295
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 296
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    .line 298
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 300
    iput v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowCount:I

    iput v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowCount:I

    :cond_3
    return-void
.end method

.method private isLeft(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 3

    .line 1313
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v2, p3, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p1

    mul-float v0, v0, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    iget p1, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    mul-float p2, p2, p1

    sub-float/2addr v0, p2

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onBitmapReady(ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 8

    .line 1092
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->unsafeOnBitmapReady(ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V

    goto :goto_0

    .line 1095
    :cond_0
    new-instance v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$3;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V

    invoke-virtual {p5, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private reset(Z)V
    .locals 8

    .line 966
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    .line 967
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->reset()V

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 969
    iget-object v2, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->rawPointerPos:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->startingPos:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->curlPos:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->curlDir:Landroid/graphics/PointF;

    iget-wide v6, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->radius:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curl(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;D)V

    :cond_0
    return-void
.end method

.method private declared-synchronized setBackTexCoords(FFFF)V
    .locals 4

    monitor-enter p0

    .line 1686
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v2, p1

    iput-wide v2, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    .line 1687
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object p1, p1, v1

    float-to-double v0, p2

    iput-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    .line 1688
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    iput-wide v2, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    .line 1689
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object p1, p1, p2

    float-to-double v2, p4

    iput-wide v2, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    .line 1690
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    float-to-double p3, p3

    iput-wide p3, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    .line 1691
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object p1, p1, p2

    iput-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    .line 1692
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    iput-wide p3, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    .line 1693
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object p1, p1, p2

    iput-wide v2, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setCurlPos(Landroid/graphics/PointF;Landroid/graphics/PointF;DLcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Landroid/graphics/PointF;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 9

    move-object v3, p1

    move-object v4, p2

    move-object v0, p5

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    .line 1613
    sget-object v5, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    const/4 v6, 0x0

    if-eq v0, v5, :cond_4

    sget-object v5, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v0, v5, :cond_0

    sget-object v5, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    move-object/from16 v7, p8

    if-ne v7, v5, :cond_0

    goto :goto_0

    .line 1633
    :cond_0
    sget-object v1, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v0, v1, :cond_8

    .line 1634
    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 1635
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->reset()V

    return-void

    .line 1638
    :cond_1
    iget v1, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1639
    iput v1, v3, Landroid/graphics/PointF;->x:F

    .line 1641
    :cond_2
    iget v0, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v0, v6

    if-eqz v1, :cond_8

    .line 1642
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v5

    .line 1643
    iget v7, v3, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v8

    div-float/2addr v1, v0

    add-float/2addr v1, v7

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    .line 1644
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v1, v0

    if-gez v8, :cond_3

    sub-float/2addr v0, v7

    .line 1645
    iput v0, v4, Landroid/graphics/PointF;->x:F

    .line 1646
    iget v0, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v5

    iput v0, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 1647
    :cond_3
    iget v0, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_8

    .line 1648
    iget v1, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    iput v1, v4, Landroid/graphics/PointF;->x:F

    .line 1649
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget v1, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 1615
    :cond_4
    :goto_0
    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_5

    .line 1616
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->reset()V

    return-void

    .line 1619
    :cond_5
    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 1620
    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 1622
    :cond_6
    iget v0, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v0, v6

    if-eqz v2, :cond_8

    .line 1623
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v5

    .line 1624
    iget v7, v3, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v8

    div-float/2addr v2, v0

    add-float/2addr v2, v7

    cmpg-float v0, v0, v6

    if-gez v0, :cond_7

    .line 1625
    iget v0, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v2, v0

    if-gez v8, :cond_7

    sub-float/2addr v7, v0

    .line 1626
    iput v7, v4, Landroid/graphics/PointF;->x:F

    .line 1627
    iget v0, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 1628
    :cond_7
    iget v0, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_8

    .line 1629
    iget v2, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iput v0, v4, Landroid/graphics/PointF;->x:F

    .line 1630
    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 1655
    :cond_8
    :goto_1
    iget v0, v4, Landroid/graphics/PointF;->x:F

    mul-float v0, v0, v0

    iget v1, v4, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmpl-double v2, v0, v5

    if-eqz v2, :cond_9

    .line 1657
    iget v2, v4, Landroid/graphics/PointF;->x:F

    float-to-double v5, v2

    div-double/2addr v5, v0

    double-to-float v2, v5

    iput v2, v4, Landroid/graphics/PointF;->x:F

    .line 1658
    iget v2, v4, Landroid/graphics/PointF;->y:F

    float-to-double v5, v2

    div-double/2addr v5, v0

    double-to-float v0, v5

    iput v0, v4, Landroid/graphics/PointF;->y:F

    move-object v0, p6

    .line 1662
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    move-object v0, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curl(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;D)V

    goto :goto_2

    .line 1664
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->reset()V

    :goto_2
    return-void
.end method

.method private declared-synchronized setTexCoords(FFFF)V
    .locals 4

    monitor-enter p0

    .line 1672
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v2, p1

    iput-wide v2, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    .line 1673
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object p1, p1, v1

    float-to-double v0, p2

    iput-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    .line 1674
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    iput-wide v2, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    .line 1675
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object p1, p1, p2

    float-to-double v2, p4

    iput-wide v2, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    .line 1676
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    float-to-double p3, p3

    iput-wide p3, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    .line 1677
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object p1, p1, p2

    iput-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    .line 1678
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    iput-wide p3, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    .line 1679
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object p1, p1, p2

    iput-wide v2, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private unsafeOnBitmapReady(ILandroid/graphics/Bitmap;IILcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 1110
    iget p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    if-ne p3, p1, :cond_1

    .line 1111
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 1112
    iget-object p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bitmapRecycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    invoke-interface {p3, p1}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 1114
    :cond_0
    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1115
    :cond_1
    iget p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    if-ne p3, p1, :cond_3

    .line 1116
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 1117
    iget-object p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bitmapRecycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    invoke-interface {p3, p1}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 1119
    :cond_2
    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1122
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bitmapRecycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 1123
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Curl Mesh Transformation - onBitmapReady - Invalid bitmap ID"

    .line 1124
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateBitmap(ILandroid/graphics/Bitmap;II)V
    .locals 7

    if-eqz p2, :cond_9

    .line 1129
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1133
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl Mesh Transformation - Update Bitmap - Notification of bitmap loaded @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bitmap ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl Mesh Transformation - Update Bitmap - In the curl mesh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Front bitmapID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " back bitmapID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1144
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mEnableBitmapStretching:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_3

    .line 1145
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1146
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float p4, p4

    mul-float v4, v0, p4

    int-to-float p3, p3

    mul-float v5, v3, p3

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    div-float/2addr p3, p4

    div-float/2addr v3, v0

    mul-float v3, v3, p3

    div-float p3, v2, v3

    sub-float p4, p3, v2

    div-float/2addr p4, v6

    sub-float v0, v1, p4

    sub-float/2addr p3, p4

    goto :goto_0

    :cond_2
    div-float/2addr p4, p3

    div-float/2addr v0, v3

    mul-float v0, v0, p4

    div-float p3, v2, v0

    sub-float p4, p3, v2

    div-float/2addr p4, v6

    sub-float v0, v1, p4

    sub-float/2addr p3, p4

    move v2, p3

    move v1, v0

    :cond_3
    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1199
    :goto_0
    iget p4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    const-string v3, "Curl Mesh Transformation - Update Bitmap - Setting bitmap @"

    const/4 v4, 0x0

    if-ne p4, p1, :cond_5

    .line 1200
    invoke-virtual {p0, v4}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->releaseFrontBitmap(Z)V

    .line 1202
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    .line 1204
    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    .line 1205
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in the front"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1208
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTextureRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0, v2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1209
    invoke-direct {p0, v1, v0, v2, p3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->setTexCoords(FFFF)V

    .line 1211
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bindFrontTexture()V

    goto/16 :goto_1

    .line 1212
    :cond_5
    iget p4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    if-ne p4, p1, :cond_7

    .line 1213
    invoke-virtual {p0, v4}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->releaseBackBitmap(Z)V

    .line 1215
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    .line 1217
    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    .line 1218
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in the back"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1221
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTextureRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0, v2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1222
    invoke-direct {p0, v2, v0, v1, p3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->setBackTexCoords(FFFF)V

    .line 1224
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bindBackTexture()V

    goto :goto_1

    .line 1226
    :cond_7
    iget-object p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bitmapRecycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    invoke-interface {p3, p2}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 1227
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1228
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Curl Mesh Transformation - Update Bitmap - Bitmap ID:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " @"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " received but it is not any of the the front (ID:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") or back (ID:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") image expecetd by this mesh"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_8
    :goto_1
    const/4 p1, 0x1

    .line 1230
    invoke-direct {p0, p1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->reset(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateCurledEdgePoints()V
    .locals 18

    move-object/from16 v0, p0

    .line 980
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    iget-object v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->curlPos:Landroid/graphics/PointF;

    .line 981
    iget-object v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->curlDir:Landroid/graphics/PointF;

    .line 982
    iget-wide v4, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->radius:D

    .line 986
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v6, v6, v7

    add-float/2addr v6, v1

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 987
    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    mul-float v8, v8, v7

    add-float/2addr v8, v6

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v7, v1

    float-to-double v9, v6

    .line 988
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 989
    iget v6, v3, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    neg-float v1, v1

    :cond_0
    float-to-double v8, v1

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v8, v10

    double-to-float v1, v8

    .line 995
    iget-object v6, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointA:Landroid/graphics/PointF;

    iget v8, v2, Landroid/graphics/PointF;->x:F

    float-to-double v8, v8

    float-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    mul-double v14, v14, v16

    add-double/2addr v8, v14

    double-to-float v1, v8

    iput v1, v6, Landroid/graphics/PointF;->x:F

    .line 996
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointA:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->y:F

    float-to-double v8, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v16

    add-double/2addr v8, v14

    double-to-float v6, v8

    iput v6, v1, Landroid/graphics/PointF;->y:F

    .line 999
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointB:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    float-to-double v8, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    add-double/2addr v8, v14

    double-to-float v6, v8

    iput v6, v1, Landroid/graphics/PointF;->x:F

    .line 1000
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointB:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v8, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v16

    add-double/2addr v8, v14

    double-to-float v2, v8

    iput v2, v1, Landroid/graphics/PointF;->y:F

    sub-double/2addr v10, v12

    .line 1004
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    div-double/2addr v4, v1

    .line 1005
    iget v1, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v7

    if-gez v1, :cond_1

    .line 1007
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointA:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1008
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointB:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointA:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 1013
    iget-object v3, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointB:Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iput v6, v1, Landroid/graphics/PointF;->x:F

    .line 1014
    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 1017
    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-double v6, v2

    sub-double/2addr v6, v4

    double-to-float v2, v6

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1018
    iget v1, v3, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    sub-double/2addr v1, v4

    double-to-float v1, v1

    iput v1, v3, Landroid/graphics/PointF;->x:F

    :goto_0
    return-void
.end method


# virtual methods
.method addVertex(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V
    .locals 3

    .line 1448
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1449
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1450
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1451
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mColors:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mColor:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1452
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mColors:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mColor:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1453
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mColors:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mColor:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1454
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mColors:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mAlpha:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1455
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTexCoords:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexX:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1457
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTexCoords:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mTexY:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1459
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTexCoords:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexX:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1460
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTexCoords:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mBackTexY:D

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_0
    return-void
.end method

.method public declared-synchronized curl(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;D)V
    .locals 35

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v14, p5

    monitor-enter p0

    .line 320
    :try_start_0
    iget-boolean v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    if-nez v1, :cond_0

    iget-boolean v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    .line 322
    :cond_0
    :try_start_1
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    if-nez v1, :cond_1

    new-instance v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;)V

    iput-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    .line 323
    :cond_1
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    iput-object v10, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->curlDir:Landroid/graphics/PointF;

    .line 324
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    iput-object v9, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->curlPos:Landroid/graphics/PointF;

    .line 325
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    iput-wide v14, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->radius:D

    .line 326
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->rawPointerPos:Landroid/graphics/PointF;

    .line 327
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    move-object/from16 v2, p2

    iput-object v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->startingPos:Landroid/graphics/PointF;

    .line 330
    iget-boolean v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 334
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v2, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 335
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v2, v9, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 336
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 337
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v4, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 338
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v4, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 339
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 340
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v4, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 341
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v4, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 342
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 343
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v4, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 344
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v3, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 345
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 348
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v3, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 349
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v3, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 350
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 351
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v3, v9, Landroid/graphics/PointF;->x:F

    iget v4, v10, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 352
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    iget v3, v9, Landroid/graphics/PointF;->y:F

    iget v4, v10, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 353
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 355
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->updateCurledEdgePoints()V

    .line 360
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVertices:Ljava/nio/FloatBuffer;

    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointA:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 361
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVertices:Ljava/nio/FloatBuffer;

    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointA:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 362
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 364
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVertices:Ljava/nio/FloatBuffer;

    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointB:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 365
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVertices:Ljava/nio/FloatBuffer;

    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointB:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 366
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 368
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    :cond_2
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 373
    iget-boolean v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    if-eqz v1, :cond_3

    .line 375
    iput v12, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVerticesCount:I

    .line 376
    iput v12, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVerticesCount:I

    .line 377
    iput v12, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVerticesCount:I

    .line 379
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 380
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 381
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 383
    :cond_3
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 384
    iget-boolean v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    if-eqz v1, :cond_4

    .line 385
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 386
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 390
    :cond_4
    iget v1, v10, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 391
    iget v3, v10, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    neg-double v1, v1

    :cond_5
    move-wide v6, v1

    .line 398
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->addAll(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;)V

    .line 399
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->clear()V

    const/4 v1, 0x0

    :goto_0
    const/4 v13, 0x4

    if-ge v1, v13, :cond_9

    .line 401
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v2, v12}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 402
    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->set(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V

    .line 403
    iget v3, v9, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    float-to-double v3, v3

    iget v5, v9, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    float-to-double v12, v5

    invoke-virtual {v2, v3, v4, v12, v13}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->translate(DD)V

    neg-double v3, v6

    .line 404
    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->rotateZ(D)V

    const/4 v3, 0x0

    .line 406
    :goto_1
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v4}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 407
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v4, v3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 408
    iget-wide v11, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    move-wide/from16 v16, v6

    iget-wide v5, v4, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    cmpl-double v7, v11, v5

    if-lez v7, :cond_6

    goto :goto_2

    .line 411
    :cond_6
    iget-wide v5, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    iget-wide v11, v4, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    cmpl-double v7, v5, v11

    if-nez v7, :cond_7

    iget-wide v5, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    iget-wide v11, v4, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    cmpl-double v4, v5, v11

    if-lez v4, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v16

    goto :goto_1

    :cond_8
    move-wide/from16 v16, v6

    .line 415
    :goto_2
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v4, v3, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v6, v16

    const/4 v12, 0x0

    goto :goto_0

    :cond_9
    move-wide/from16 v16, v6

    const/4 v1, 0x0

    .line 418
    :goto_3
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 419
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    invoke-direct {v8, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->addRotatedVertex(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    new-array v12, v13, [[I

    const/4 v11, 0x2

    new-array v1, v11, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v6, 0x1

    aput v6, v1, v6

    aput-object v1, v12, v2

    new-array v1, v11, [I

    aput v2, v1, v2

    aput v11, v1, v6

    aput-object v1, v12, v6

    new-array v1, v11, [I

    aput v6, v1, v2

    const/4 v7, 0x3

    aput v7, v1, v6

    aput-object v1, v12, v11

    new-array v1, v11, [I

    aput v11, v1, v2

    aput v7, v1, v6

    aput-object v1, v12, v7

    .line 435
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 436
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v2, v11}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 437
    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v3, v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 438
    iget-wide v4, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    iget-wide v13, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    sub-double/2addr v4, v13

    iget-wide v13, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v7, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    sub-double/2addr v13, v7

    mul-double v4, v4, v13

    iget-wide v7, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    iget-wide v13, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    sub-double/2addr v7, v13

    iget-wide v13, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    move-object/from16 v18, v12

    iget-wide v11, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    sub-double/2addr v13, v11

    mul-double v7, v7, v13

    add-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 441
    iget-wide v7, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    iget-wide v11, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    sub-double/2addr v7, v11

    iget-wide v11, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    iget-wide v13, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    sub-double/2addr v11, v13

    mul-double v7, v7, v11

    iget-wide v11, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    iget-wide v13, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    sub-double/2addr v11, v13

    iget-wide v1, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    iget-wide v13, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    sub-double/2addr v1, v13

    mul-double v11, v11, v1

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    cmpl-double v3, v4, v1

    if-lez v3, :cond_b

    .line 445
    aget-object v1, v18, v6

    const/4 v7, 0x3

    aput v7, v1, v6

    const/4 v1, 0x2

    .line 446
    aget-object v2, v18, v1

    aput v1, v2, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_b
    const/4 v7, 0x3

    :goto_4
    const/4 v1, 0x0

    move-object/from16 v8, p0

    .line 450
    :try_start_3
    iput v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountBack:I

    iput v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountFront:I

    .line 452
    iget-boolean v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_SHADOW:Z

    if-eqz v1, :cond_c

    .line 453
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->addAll(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;)V

    .line 454
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->addAll(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;)V

    .line 455
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->clear()V

    .line 456
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->clear()V

    :cond_c
    const-wide v20, 0x400921fb54442d18L    # Math.PI

    move-wide/from16 v14, p5

    mul-double v12, v14, v20

    .line 463
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->clear()V

    .line 464
    iget v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    const-wide/16 v22, 0x0

    if-lez v1, :cond_d

    .line 465
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v26, v16

    const/4 v11, 0x1

    move-wide/from16 v6, v24

    .line 466
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->addScanLinesVertex(DDD)V

    goto :goto_5

    :cond_d
    move-wide/from16 v26, v16

    const/4 v11, 0x1

    :goto_5
    const/4 v6, 0x1

    .line 468
    :goto_6
    iget v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    if-ge v6, v1, :cond_e

    .line 469
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    neg-double v2, v12

    int-to-double v4, v6

    mul-double v2, v2, v4

    iget v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mMaxCurlSplits:I

    sub-int/2addr v4, v11

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    .line 470
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v6}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move/from16 v24, v6

    move-wide/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->addScanLinesVertex(DDD)V

    add-int/lit8 v6, v24, 0x1

    goto :goto_6

    .line 475
    :cond_e
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    iget-wide v2, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    .line 476
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->addScanLinesVertex(DDD)V

    .line 480
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    iget-wide v1, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    add-double v1, v1, v16

    const/4 v3, 0x0

    .line 482
    :goto_7
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v4}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v4

    if-ge v3, v4, :cond_20

    .line 485
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v4, v3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x0

    .line 487
    :goto_8
    iget-object v7, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v7

    if-ge v6, v7, :cond_13

    .line 488
    iget-object v7, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v7, v6}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    move-wide/from16 v16, v12

    .line 494
    iget-wide v11, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    cmpl-double v24, v11, v4

    if-ltz v24, :cond_12

    iget-wide v11, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    cmpg-double v24, v11, v1

    if-gtz v24, :cond_12

    .line 496
    iget-object v11, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 497
    invoke-virtual {v11, v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->set(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V

    .line 501
    iget-object v12, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    iget-wide v13, v11, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    move-object/from16 v15, v18

    invoke-direct {v8, v12, v15, v13, v14}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->getIntersections(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;[[ID)Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    move-result-object v12

    .line 507
    invoke-virtual {v12}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    const/4 v14, 0x0

    .line 508
    invoke-virtual {v12, v14}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    iget-wide v13, v14, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    move-wide/from16 v28, v1

    iget-wide v1, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    cmpl-double v7, v13, v1

    if-lez v7, :cond_10

    .line 510
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v12}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->addAll(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;)V

    .line 511
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v11}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    move-wide/from16 v28, v1

    .line 512
    :cond_10
    invoke-virtual {v12}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_11

    .line 514
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v11}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    .line 515
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v12}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->addAll(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;)V

    goto :goto_9

    .line 520
    :cond_11
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v11}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    .line 521
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v12}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->addAll(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;)V

    goto :goto_9

    :cond_12
    move-wide/from16 v28, v1

    move-object/from16 v15, v18

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v18, v15

    move-wide/from16 v12, v16

    move-wide/from16 v1, v28

    const/4 v11, 0x1

    move-wide/from16 v14, p5

    goto/16 :goto_8

    :cond_13
    move-wide/from16 v16, v12

    move-object/from16 v15, v18

    .line 527
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRotatedVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-direct {v8, v1, v15, v4, v5}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->getIntersections(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;[[ID)Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_15

    const/4 v2, 0x0

    .line 536
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    const/4 v2, 0x1

    .line 537
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 538
    iget-wide v13, v7, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    move/from16 v24, v3

    iget-wide v2, v11, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    cmpg-double v18, v13, v2

    if-gez v18, :cond_14

    .line 539
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v11}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    .line 540
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1, v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    goto :goto_a

    .line 542
    :cond_14
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->addAll(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;)V

    goto :goto_a

    :cond_15
    move/from16 v24, v3

    .line 544
    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v2

    if-eqz v2, :cond_16

    .line 552
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->addAll(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;)V

    .line 556
    :cond_16
    :goto_a
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v1

    if-lez v1, :cond_1f

    .line 557
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mOutputVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    .line 558
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(Ljava/lang/Object;)V

    if-nez v24, :cond_17

    .line 563
    iget v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountFront:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountFront:I

    move-wide/from16 v6, p5

    move/from16 v25, v24

    :goto_b
    move-wide/from16 v12, v26

    const/4 v3, 0x1

    goto/16 :goto_f

    .line 566
    :cond_17
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mScanLines:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move/from16 v3, v24

    if-eq v3, v2, :cond_1b

    cmpl-double v2, v16, v22

    if-nez v2, :cond_18

    goto :goto_d

    .line 577
    :cond_18
    iget-wide v11, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    div-double v11, v11, v16

    mul-double v11, v11, v20

    .line 578
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v6, p5

    mul-double v13, v6, v18

    iput-wide v13, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    .line 579
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, v6

    sub-double v13, v6, v13

    iput-wide v13, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    .line 581
    iget-boolean v13, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_SHADOW:Z

    if-eqz v13, :cond_19

    .line 582
    iget-object v13, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    invoke-interface {v13, v6, v7, v11, v12}, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;->getBackShadow(DD)Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;

    move-result-object v11

    .line 583
    iget-wide v12, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    move/from16 v25, v3

    iget-wide v2, v11, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraX:D

    mul-double v12, v12, v2

    iput-wide v12, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    .line 584
    iget-wide v2, v11, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraColor:D

    iput-wide v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mColor:D

    goto :goto_c

    :cond_19
    move/from16 v25, v3

    .line 587
    :goto_c
    iget-wide v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    cmpl-double v11, v2, v6

    if-ltz v11, :cond_1a

    .line 588
    iget v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountBack:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountBack:I

    goto :goto_e

    :cond_1a
    const/4 v3, 0x1

    .line 590
    iget v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountFront:I

    add-int/2addr v2, v3

    iput v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountFront:I

    goto :goto_b

    :cond_1b
    :goto_d
    move-wide/from16 v6, p5

    move/from16 v25, v3

    .line 567
    iget-wide v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    add-double v2, v16, v2

    neg-double v2, v2

    iput-wide v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v6

    .line 568
    iput-wide v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    .line 569
    iget-wide v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    neg-double v2, v2

    iput-wide v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    .line 570
    iget v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountBack:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountBack:I

    :goto_e
    move-wide/from16 v12, v26

    .line 595
    :goto_f
    invoke-virtual {v1, v12, v13}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->rotateZ(D)V

    .line 596
    iget v2, v9, Landroid/graphics/PointF;->x:F

    move-wide/from16 v26, v4

    float-to-double v3, v2

    iget v2, v9, Landroid/graphics/PointF;->y:F

    move-wide/from16 v28, v12

    float-to-double v11, v2

    invoke-virtual {v1, v3, v4, v11, v12}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->translate(DD)V

    .line 597
    invoke-virtual {v8, v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->addVertex(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V

    .line 598
    iget-boolean v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    if-eqz v2, :cond_1c

    .line 599
    invoke-direct {v8, v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->addUntranslatedVertex(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V

    .line 602
    :cond_1c
    iget-boolean v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_SHADOW:Z

    if-eqz v2, :cond_1d

    iget-wide v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    cmpl-double v4, v2, v22

    if-lez v4, :cond_1d

    iget-wide v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    cmpg-double v4, v2, v6

    if-gtz v4, :cond_1d

    .line 603
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;

    .line 604
    iget-wide v4, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    iput-wide v4, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosX:D

    .line 605
    iget-wide v4, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    iput-wide v4, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosY:D

    .line 606
    iget-wide v4, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    iput-wide v4, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosZ:D

    .line 608
    iget-object v11, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    iget v12, v10, Landroid/graphics/PointF;->x:F

    float-to-double v13, v12

    iget v12, v10, Landroid/graphics/PointF;->y:F

    move-wide/from16 v30, v4

    float-to-double v3, v12

    const/4 v5, 0x2

    const/16 v24, 0x1

    move-object/from16 v32, v15

    move-wide/from16 v33, v16

    const/4 v15, 0x0

    move-wide v12, v13

    const/4 v6, 0x0

    move-wide v14, v3

    move-wide/from16 v16, v30

    move-wide/from16 v18, p5

    invoke-interface/range {v11 .. v19}, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;->getDropShadow(DDDD)Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;

    move-result-object v3

    .line 609
    iget-wide v11, v3, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraX:D

    iput-wide v11, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraX:D

    .line 610
    iget-wide v11, v3, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraY:D

    iput-wide v11, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraY:D

    .line 611
    iget-wide v3, v3, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraColor:D

    iput-wide v3, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraColor:D

    .line 613
    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    div-int/2addr v3, v5

    .line 614
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v4, v3, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(ILjava/lang/Object;)V

    goto :goto_10

    :cond_1d
    move-object/from16 v32, v15

    move-wide/from16 v33, v16

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v24, 0x1

    .line 617
    :goto_10
    iget-boolean v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_SHADOW:Z

    if-eqz v2, :cond_1e

    iget-wide v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    cmpl-double v4, v2, p5

    if-lez v4, :cond_1e

    .line 618
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTempShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v2, v6}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;

    .line 619
    iget-wide v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    iput-wide v3, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosX:D

    .line 620
    iget-wide v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    iput-wide v3, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosY:D

    .line 621
    iget-wide v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    iput-wide v3, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosZ:D

    .line 623
    iget-object v11, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    iget-wide v12, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    iget-wide v14, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    iget-wide v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosZ:D

    move-wide/from16 v16, v3

    move-wide/from16 v18, p5

    invoke-interface/range {v11 .. v19}, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;->getSelfShadow(DDDD)Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;

    move-result-object v3

    .line 624
    iget-wide v11, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraX:D

    iget-wide v13, v3, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraX:D

    mul-double v11, v11, v13

    iput-wide v11, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraX:D

    .line 625
    iget-wide v11, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPenumbraY:D

    iget-wide v13, v3, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraY:D

    mul-double v11, v11, v13

    iput-wide v11, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraY:D

    .line 626
    iget-wide v3, v3, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;->mPenumbraColor:D

    iput-wide v3, v2, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraColor:D

    .line 628
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v1, v5

    .line 629
    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v3, v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->add(ILjava/lang/Object;)V

    :cond_1e
    move/from16 v24, v25

    move-wide/from16 v4, v26

    move-wide/from16 v26, v28

    move-object/from16 v15, v32

    move-wide/from16 v16, v33

    const/4 v6, 0x2

    goto/16 :goto_a

    :cond_1f
    move-object/from16 v32, v15

    move-wide/from16 v33, v16

    move/from16 v25, v24

    move-wide/from16 v28, v26

    const/4 v6, 0x0

    const/16 v24, 0x1

    move-wide/from16 v26, v4

    const/4 v5, 0x2

    add-int/lit8 v3, v25, 0x1

    move-wide/from16 v14, p5

    move-wide/from16 v1, v26

    move-wide/from16 v26, v28

    move-object/from16 v18, v32

    move-wide/from16 v12, v33

    const/4 v11, 0x1

    goto/16 :goto_7

    :cond_20
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 637
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 638
    iget-boolean v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    if-eqz v1, :cond_21

    .line 639
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 640
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 641
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 643
    :cond_21
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 644
    iget-boolean v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    if-eqz v1, :cond_22

    .line 645
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 646
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 650
    :cond_22
    iget-boolean v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_SHADOW:Z

    if-eqz v1, :cond_27

    .line 651
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 652
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 653
    iput v6, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowCount:I

    .line 655
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    invoke-interface {v1}, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;->getShadowInnerColor()[F

    move-result-object v1

    .line 656
    iget-object v2, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;->getShadowOuterColor()[F

    move-result-object v2

    const/4 v12, 0x0

    .line 658
    :goto_11
    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v3

    if-ge v12, v3, :cond_24

    .line 659
    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v3, v12}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;

    .line 660
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v9, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosX:D

    double-to-float v7, v9

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 661
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v9, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosY:D

    double-to-float v7, v9

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 662
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v9, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosZ:D

    double-to-float v7, v9

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 663
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v9, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosX:D

    iget-wide v13, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraX:D

    add-double/2addr v9, v13

    double-to-float v7, v9

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 664
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v9, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosY:D

    iget-wide v13, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraY:D

    add-double/2addr v9, v13

    double-to-float v7, v9

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 665
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v9, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosZ:D

    double-to-float v7, v9

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    :goto_12
    const/4 v7, 0x4

    if-ge v4, v7, :cond_23

    .line 667
    aget v9, v2, v4

    float-to-double v9, v9

    aget v11, v1, v4

    aget v13, v2, v4

    sub-float/2addr v11, v13

    float-to-double v13, v11

    iget-wide v6, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraColor:D

    mul-double v13, v13, v6

    add-double/2addr v9, v13

    .line 670
    iget-object v6, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowColors:Ljava/nio/FloatBuffer;

    double-to-float v7, v9

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    goto :goto_12

    .line 672
    :cond_23
    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 673
    iget v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowCount:I

    add-int/2addr v3, v5

    iput v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowCount:I

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_11

    :cond_24
    const/4 v3, 0x0

    .line 675
    iput v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowCount:I

    const/4 v12, 0x0

    .line 676
    :goto_13
    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->size()I

    move-result v3

    if-ge v12, v3, :cond_26

    .line 677
    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowVertices:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;

    invoke-virtual {v3, v12}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;

    .line 678
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v6, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosX:D

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 679
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v6, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosY:D

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 680
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v6, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosZ:D

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 681
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v6, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosX:D

    iget-wide v9, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraX:D

    add-double/2addr v6, v9

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 682
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v6, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosY:D

    iget-wide v9, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraY:D

    add-double/2addr v6, v9

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 683
    iget-object v4, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    iget-wide v6, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPosZ:D

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    :goto_14
    const/4 v6, 0x4

    if-ge v4, v6, :cond_25

    .line 685
    aget v7, v2, v4

    float-to-double v9, v7

    aget v7, v1, v4

    aget v11, v2, v4

    sub-float/2addr v7, v11

    float-to-double v13, v7

    iget-wide v6, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$ShadowVertex;->mPenumbraColor:D

    mul-double v13, v13, v6

    add-double/2addr v9, v13

    .line 688
    iget-object v6, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowColors:Ljava/nio/FloatBuffer;

    double-to-float v7, v9

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 690
    :cond_25
    iget-object v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 691
    iget v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowCount:I

    add-int/2addr v3, v5

    iput v3, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowCount:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 693
    :cond_26
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowColors:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 694
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 696
    :cond_27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_15

    :catchall_1
    move-exception v0

    :goto_15
    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized drawOpenGLES20(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p2

    monitor-enter p0

    .line 699
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Curl Mesh Transformation - draw - open GL ES 20 DRAW !!"

    .line 700
    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0xb44

    .line 701
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 703
    iget-boolean v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "a_position"

    .line 705
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    const-string v3, "glGetAttribLocation a_position"

    .line 706
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const-string v3, "a_color"

    .line 708
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v10

    const-string v3, "glGetAttribLocation a_color"

    .line 709
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const-string v3, "TexCoordIn"

    .line 711
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v11

    const-string v3, "glGetAttribLocation TexCoordIn"

    .line 712
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const-string v3, "texBrightness"

    .line 714
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    const-string v4, "glGetUniformLocation texBrightness"

    .line 715
    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const-string v4, "texContrast"

    .line 717
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v12

    const-string v4, "glGetUniformLocation texContrast"

    .line 718
    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const-string v4, "texAvLuminance"

    .line 720
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    const-string v5, "glGetUniformLocation texAvLuminance"

    .line 721
    invoke-static {v5}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const-string v5, "texFading"

    .line 723
    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const-string v5, "glGetUniformLocation texFading"

    .line 724
    invoke-static {v5}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const/high16 v13, 0x3f800000    # 1.0f

    .line 728
    invoke-static {v3, v13, v13, v13, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 729
    invoke-static {v12, v13, v13, v13, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 730
    invoke-static {v4, v3, v3, v3, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v3, 0x0

    .line 731
    invoke-static {v0, v3, v3, v3, v3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const-string v3, "GL Draw setting the default brightness, contrast, fading, luminance"

    .line 732
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 734
    iget-boolean v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    const/16 v14, 0xde1

    const/4 v15, 0x0

    if-eqz v3, :cond_5

    .line 735
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 737
    iget-object v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 738
    iget v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    iget-object v4, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    iget v5, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->pageWidth:I

    iget v6, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->pageHeight:I

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->updateBitmap(ILandroid/graphics/Bitmap;II)V

    .line 741
    :cond_2
    iget v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    if-nez v3, :cond_3

    .line 743
    iget-object v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    invoke-virtual {v3}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->getDefaultTextureID()I

    move-result v3

    .line 745
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "glActiveTexture GL_TEXTURE0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 747
    invoke-static {v14, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "front glBindTexture:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Curl Mesh Transformation - Draw Open GL ES 20 - Binding front textures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_4
    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 753
    iget-object v9, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTexCoords:Ljava/nio/FloatBuffer;

    move v4, v11

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 754
    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glEnableVertexAttribArray textureLoc front"

    .line 755
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Curl Mesh Transformation - Draw Open GL ES 20 - [Perf Measurment] Time to bind front texture:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 765
    invoke-static {v14, v15}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 766
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->getBackgroundRedComponent()F

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->getBackgroundGreenComponent()F

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->getBackgroundBleuComponent()F

    move-result v7

    invoke-static {v0, v5, v6, v7, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 768
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curl Mesh Transformation - Draw Open GL ES 20 - [Perf Measurment] Time to bind a empty front texture:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_6
    :goto_0
    const-string v3, "Texture binding"

    .line 771
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 774
    iget-object v8, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVertices:Ljava/nio/FloatBuffer;

    move v3, v2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 775
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glVertexAttribPointer mVertices"

    .line 776
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const/4 v5, 0x4

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 779
    iget-object v9, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mColors:Ljava/nio/FloatBuffer;

    move v4, v10

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 780
    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glVertexAttribPointer mColors"

    .line 781
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 783
    iget-boolean v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    const/4 v10, 0x5

    if-eqz v3, :cond_7

    .line 785
    iget v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountFront:I

    invoke-static {v10, v15, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v3, "glDrawArrays"

    .line 786
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 790
    :cond_7
    iget-boolean v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDisplayFrontImageOnBack:Z

    const v9, 0x3f0f5c29    # 0.56f

    if-nez v3, :cond_c

    .line 791
    iget-boolean v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    if-eqz v3, :cond_b

    .line 792
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 794
    iget-object v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    .line 795
    iget v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    iget-object v4, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    iget v5, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->pageWidth:I

    iget v6, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->pageHeight:I

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->updateBitmap(ILandroid/graphics/Bitmap;II)V

    .line 798
    :cond_8
    iget v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    if-nez v3, :cond_9

    .line 800
    iget-object v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    invoke-virtual {v3}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->getDefaultTextureID()I

    move-result v3

    .line 803
    :cond_9
    invoke-static {v14, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "back glBindTexture:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 805
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Curl Mesh Transformation - Draw Open GL ES 20 - Binding back textures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_a
    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 809
    iget-object v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTexCoords:Ljava/nio/FloatBuffer;

    move v4, v11

    const v14, 0x3f0f5c29    # 0.56f

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 810
    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glEnableVertexAttribArray textureLoc back"

    .line 811
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 813
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Curl Mesh Transformation - Draw Open GL ES 20 - [Perf Measurment] Time to bind back texture:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const v3, 0x3f0f5c29    # 0.56f

    .line 818
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 820
    invoke-static {v14, v15}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 821
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->getBackgroundRedComponent()F

    move-result v6

    add-float/2addr v6, v3

    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->getBackgroundGreenComponent()F

    move-result v7

    add-float/2addr v7, v3

    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->getBackgroundBleuComponent()F

    move-result v8

    add-float/2addr v8, v3

    invoke-static {v0, v6, v7, v8, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 823
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 824
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Curl Mesh Transformation - Draw Open GL ES 20 - [Perf Measurment] Time to bind a empty back texture:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    :goto_1
    const v3, 0x3f0f5c29    # 0.56f

    :cond_d
    :goto_2
    const-string v4, "Texture binding"

    .line 827
    invoke-static {v4}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 830
    iget v4, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountFront:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 831
    iget v5, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountFront:I

    iget v6, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountBack:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    .line 834
    iget-boolean v6, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDisplayFrontImageOnBack:Z

    if-eqz v6, :cond_e

    const v6, 0x3dcccccd    # 0.1f

    .line 835
    invoke-static {v12, v6, v6, v6, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 837
    invoke-static {v0, v3, v3, v3, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 841
    :cond_e
    iget-boolean v0, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z

    if-eqz v0, :cond_f

    .line 842
    invoke-static {v10, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 843
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 846
    :cond_f
    iget-boolean v0, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    if-eqz v0, :cond_10

    const/high16 v0, 0x41200000    # 10.0f

    .line 847
    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 849
    iget-object v8, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLines:Ljava/nio/FloatBuffer;

    move v3, v2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 850
    iget v0, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mCurlPositionLinesCount:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v9, 0x1

    invoke-static {v9, v15, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 851
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 853
    iget-object v8, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVertices:Ljava/nio/FloatBuffer;

    move v3, v2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 854
    iget v0, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlEdgeVerticesCount:I

    invoke-static {v9, v15, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 855
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 857
    iget-object v8, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVertices:Ljava/nio/FloatBuffer;

    move v3, v2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 858
    iget v0, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVerticesCount:I

    invoke-static {v15, v15, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 859
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 861
    iget-object v8, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVertices:Ljava/nio/FloatBuffer;

    move v3, v2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 862
    iget v0, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVerticesCount:I

    invoke-static {v15, v15, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 863
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 865
    iget-object v8, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVertices:Ljava/nio/FloatBuffer;

    move v3, v2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 866
    iget v0, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVerticesCount:I

    invoke-static {v15, v15, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 867
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 870
    :cond_10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized drawOpenGLES20DropShadow(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 8

    monitor-enter p0

    .line 873
    :try_start_0
    iget-boolean p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "a_position"

    .line 875
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    const-string v0, "glGetAttribLocation a_position"

    .line 876
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const-string v0, "a_color"

    .line 878
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const-string v0, "glGetAttribLocation a_color"

    .line 879
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const/16 v7, 0xbe2

    .line 881
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    .line 882
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 884
    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 885
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 886
    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowColors:Ljava/nio/FloatBuffer;

    move v1, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 887
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p1, 0x5

    const/4 p2, 0x0

    .line 889
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowCount:I

    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 891
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisable(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized drawOpenGLES20SelfShadow(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 8

    monitor-enter p0

    .line 895
    :try_start_0
    iget-boolean p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "a_position"

    .line 897
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    const-string v0, "glGetAttribLocation a_position"

    .line 898
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const-string v0, "a_color"

    .line 900
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const-string v0, "glGetAttribLocation a_color"

    .line 901
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    const/16 v7, 0xbe2

    .line 903
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    .line 904
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 906
    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowVertices:Ljava/nio/FloatBuffer;

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 907
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 908
    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowColors:Ljava/nio/FloatBuffer;

    move v1, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 909
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p1, 0x5

    .line 911
    iget p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowCount:I

    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowCount:I

    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 913
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisable(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBackImageIndex()I
    .locals 1

    .line 1029
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    return v0
.end method

.method public getFrontImageIndex()I
    .locals 1

    .line 1024
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    return v0
.end method

.method public declared-synchronized invertBackFrontBitmap()V
    .locals 4

    monitor-enter p0

    .line 1386
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Curl Mesh Transformation - Inverting front back image"

    .line 1387
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl Mesh Transformation - Inverting front back image - Old front bitmap is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TextureID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl Mesh Transformation - Inverting front back image - Old back bitmap is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TextureID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    .line 1393
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    .line 1394
    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    .line 1396
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 1397
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 1398
    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 1400
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    .line 1401
    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    iput v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    .line 1402
    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    .line 1404
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    .line 1405
    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    iput v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    .line 1406
    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    .line 1408
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTextureRect:Landroid/graphics/RectF;

    .line 1409
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTextureRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTextureRect:Landroid/graphics/RectF;

    .line 1410
    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTextureRect:Landroid/graphics/RectF;

    .line 1412
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    .line 1413
    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z

    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    .line 1414
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z

    .line 1416
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl Mesh Transformation - Inverting front back image - New front bitmap is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TextureID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl Mesh Transformation - Inverting front back image - New back bitmap is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TextureID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1421
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTextureRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTextureRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTextureRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTextureRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->setTexCoords(FFFF)V

    .line 1424
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTextureRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTextureRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTextureRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTextureRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->setBackTexCoords(FFFF)V

    const/4 v0, 0x1

    .line 1427
    invoke-direct {p0, v0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->reset(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1428
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBackVisible()Z
    .locals 1

    .line 1280
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z

    return v0
.end method

.method public isFrontVisible()Z
    .locals 1

    .line 1275
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    return v0
.end method

.method public isTouchingTheMesh(Landroid/graphics/PointF;)Z
    .locals 3

    .line 1286
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1289
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->updateCurledEdgePoints()V

    .line 1291
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointA:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->curledEdgePointB:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v2, p1}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->isLeft(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    .line 1295
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;

    iget-object v0, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;->curlDir:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public releaseBackBitmap(Z)V
    .locals 2

    .line 1352
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl Mesh Transformation - Release Bitmap - Releasing Back bitmaps in the mesh @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " !!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1356
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Curl Mesh Transformation - Release Bitmap - Recycling the back image @"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1358
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bitmapRecycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 1359
    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapBack:Landroid/graphics/Bitmap;

    :cond_2
    const/4 p1, -0x1

    .line 1362
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    .line 1365
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Curl Mesh Transformation - Release Bitmap - releasing the back texture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1367
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->releaseTexture(I)V

    const/4 p1, 0x0

    .line 1371
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backTextureID:I

    .line 1373
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    if-eqz p1, :cond_4

    .line 1374
    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;->cancel()Z

    .line 1375
    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    :cond_4
    const/4 p1, 0x1

    .line 1378
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z

    return-void
.end method

.method public releaseBitmap()V
    .locals 1

    const/4 v0, 0x1

    .line 1318
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->releaseFrontBitmap(Z)V

    .line 1319
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->releaseBackBitmap(Z)V

    return-void
.end method

.method public releaseFrontBitmap(Z)V
    .locals 2

    .line 1323
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl Mesh Transformation - Release Bitmap - Releasing Front bitmaps in the mesh @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " !!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1327
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Curl Mesh Transformation - Release Bitmap - Recycling the front image @"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1329
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->bitmapRecycler:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 1330
    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBitmapFront:Landroid/graphics/Bitmap;

    :cond_2
    const/4 p1, -0x1

    .line 1333
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    .line 1336
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Curl Mesh Transformation - Release Bitmap - releasing the front texture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1338
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->releaseTexture(I)V

    const/4 p1, 0x0

    .line 1342
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontTextureID:I

    .line 1344
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    if-eqz p1, :cond_4

    .line 1345
    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;->cancel()Z

    .line 1346
    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    :cond_4
    const/4 p1, 0x1

    .line 1348
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 922
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl Mesh Transformation - reset - reseting the curl state of @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". front bitmapID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " back bitmapID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 925
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 927
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 928
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 931
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 933
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 936
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->addVertex(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V

    .line 937
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->addRotatedVertex(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    :cond_3
    iput v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountFront:I

    .line 940
    iput v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVerticesCountBack:I

    .line 941
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 942
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_DEBUG_POINTS:Z

    if-eqz v0, :cond_4

    .line 943
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugRotatedVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 944
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugScanLinesVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 945
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->debugCurlVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 947
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 948
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    if-eqz v0, :cond_5

    .line 949
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 950
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 952
    :cond_5
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_SHADOW:Z

    if-eqz v0, :cond_6

    .line 953
    iput v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mSelfShadowCount:I

    iput v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDropShadowCount:I

    :cond_6
    const/4 v0, 0x0

    .line 957
    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->lastKnownCurl:Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$LastKnownCurl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBackBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V
    .locals 1

    monitor-enter p0

    .line 1066
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    if-ne v0, p1, :cond_0

    if-eqz p6, :cond_1

    .line 1067
    :cond_0
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mBackBitmapID:I

    .line 1070
    iput p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->pageWidth:I

    .line 1071
    iput p4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->pageHeight:I

    .line 1074
    new-instance p6, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$2;

    invoke-direct {p6, p0, p3, p4, p5}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$2;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;IILcom/amazon/kindle/pagecurl/CurlView;)V

    invoke-interface {p2, p1, p3, p4, p6}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->loadBitmap(IIILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 1082
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1083
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Curl Mesh Transformation - Set back bitmaploader - Job @"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " started !"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBackVisiblity(Z)V
    .locals 0

    .line 1270
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backVisible:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1855
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->backgroundColor:I

    return-void
.end method

.method public declared-synchronized setBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V
    .locals 1

    monitor-enter p0

    .line 1041
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->DRAW_TEXTURE:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    if-ne v0, p1, :cond_0

    if-eqz p6, :cond_1

    .line 1042
    :cond_0
    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mFrontBitmapID:I

    .line 1045
    iput p3, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->pageWidth:I

    .line 1046
    iput p4, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->pageHeight:I

    .line 1049
    new-instance p6, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;

    invoke-direct {p6, p0, p3, p4, p5}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$1;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;IILcom/amazon/kindle/pagecurl/CurlView;)V

    invoke-interface {p2, p1, p3, p4, p6}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->loadBitmap(IIILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 1057
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1058
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Curl Mesh Transformation - Set front bitmaploader - Job @"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontBitmapLoaderJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " started !"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDisplayFrontImageOnBack(Z)V
    .locals 0

    .line 1034
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mDisplayFrontImageOnBack:Z

    return-void
.end method

.method public setFrontVisiblity(Z)V
    .locals 0

    .line 1262
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->frontVisible:Z

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;I)V
    .locals 6

    .line 1434
    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mRectangle:[Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;

    const/4 v0, 0x0

    aget-object v1, p2, v0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-double v3, v2

    iput-wide v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    .line 1435
    aget-object v0, p2, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v1

    iput-wide v3, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    const/4 v0, 0x1

    .line 1436
    aget-object v3, p2, v0

    float-to-double v4, v2

    iput-wide v4, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    .line 1437
    aget-object v0, p2, v0

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v2

    iput-wide v3, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    const/4 v0, 0x2

    .line 1438
    aget-object v3, p2, v0

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-double v4, p1

    iput-wide v4, v3, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    .line 1439
    aget-object v0, p2, v0

    float-to-double v3, v1

    iput-wide v3, v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    const/4 v0, 0x3

    .line 1440
    aget-object v1, p2, v0

    float-to-double v3, p1

    iput-wide v3, v1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosX:D

    .line 1441
    aget-object p1, p2, v0

    float-to-double v0, v2

    iput-wide v0, p1, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation$Vertex;->mPosY:D

    return-void
.end method

.method public setShadowProvider(Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;)V
    .locals 0

    .line 1860
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    return-void
.end method

.method public updateCurlPos(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Landroid/graphics/PointF;Lcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 18

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    .line 1539
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - Update curl - updating the page position accordingly to currentPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1541
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 1542
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 1545
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v0, v3

    float-to-double v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1551
    iget v8, v6, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPressure:F

    sub-float/2addr v0, v8

    const/4 v8, 0x0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v10, v0

    mul-double v3, v3, v10

    .line 1557
    iget-object v0, v6, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1561
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-eq v5, v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v5, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    move-object/from16 v10, p4

    if-ne v10, v0, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v10, p4

    .line 1593
    :cond_2
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v5, v0, :cond_6

    .line 1596
    iget v0, v9, Landroid/graphics/RectF;->left:F

    .line 1597
    iget v8, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v0

    float-to-double v11, v8

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const-wide/16 v11, 0x0

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 1599
    iget v0, v9, Landroid/graphics/RectF;->right:F

    .line 1600
    iget v8, v1, Landroid/graphics/PointF;->x:F

    float-to-double v11, v8

    sub-float/2addr v0, v8

    float-to-double v13, v0

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    sub-double/2addr v11, v13

    double-to-float v0, v11

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1601
    iget v8, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v8

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 1602
    iget v0, v1, Landroid/graphics/PointF;->y:F

    iget v8, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v8

    iput v0, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1604
    invoke-direct/range {v0 .. v10}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->setCurlPos(Landroid/graphics/PointF;Landroid/graphics/PointF;DLcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Landroid/graphics/PointF;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_2

    :cond_3
    move-object/from16 v10, p4

    .line 1564
    :goto_0
    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v11

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 1565
    iget v11, v1, Landroid/graphics/PointF;->y:F

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    iput v11, v2, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v0

    mul-float v11, v11, v11

    add-float/2addr v0, v11

    float-to-double v11, v0

    .line 1566
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v0, v11

    .line 1571
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v11

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v3, v12

    float-to-double v12, v0

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v11, v11, v16

    float-to-double v8, v11

    sub-double/2addr v8, v14

    cmpl-double v17, v12, v8

    if-lez v17, :cond_4

    sub-float/2addr v11, v0

    const/4 v0, 0x0

    .line 1574
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v14, v0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double v8, v14, v3

    move-wide v3, v8

    :cond_4
    cmpl-double v0, v12, v14

    if-ltz v0, :cond_5

    sub-double v8, v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v14

    .line 1581
    iget v0, v1, Landroid/graphics/PointF;->x:F

    float-to-double v14, v0

    iget v0, v2, Landroid/graphics/PointF;->x:F

    float-to-double v5, v0

    mul-double v5, v5, v8

    div-double/2addr v5, v12

    sub-double/2addr v14, v5

    double-to-float v0, v14

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1582
    iget v0, v1, Landroid/graphics/PointF;->y:F

    float-to-double v5, v0

    iget v0, v2, Landroid/graphics/PointF;->y:F

    float-to-double v14, v0

    mul-double v14, v14, v8

    div-double/2addr v14, v12

    sub-double/2addr v5, v14

    double-to-float v0, v5

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_5
    div-double v5, v12, v14

    .line 1584
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, v8

    .line 1585
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    .line 1586
    iget v0, v1, Landroid/graphics/PointF;->x:F

    float-to-double v8, v0

    iget v0, v2, Landroid/graphics/PointF;->x:F

    float-to-double v14, v0

    mul-double v14, v14, v5

    div-double/2addr v14, v12

    add-double/2addr v8, v14

    double-to-float v0, v8

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1587
    iget v0, v1, Landroid/graphics/PointF;->y:F

    float-to-double v8, v0

    iget v0, v2, Landroid/graphics/PointF;->y:F

    float-to-double v14, v0

    mul-double v14, v14, v5

    div-double/2addr v14, v12

    add-double/2addr v8, v14

    double-to-float v0, v8

    iput v0, v1, Landroid/graphics/PointF;->y:F

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1590
    invoke-direct/range {v0 .. v10}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;->setCurlPos(Landroid/graphics/PointF;Landroid/graphics/PointF;DLcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Landroid/graphics/PointF;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_6
    :goto_2
    return-void
.end method
