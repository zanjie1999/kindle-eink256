.class public Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;
.super Ljava/lang/Object;
.source "TextureProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_TEXTURE_TO_KEEP:I = 0x5


# instance fields
.field private availableTextureIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBitmap:Landroid/graphics/Bitmap;

.field private defaultTextureID:I

.field private final glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

.field private usedTextureIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultTextureID:I

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->availableTextureIds:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->usedTextureIds:Ljava/util/HashMap;

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 47
    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    .line 48
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Texture Provider - creation - Texture provider created"

    .line 49
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private lookForAvailableTexture(Landroid/graphics/Bitmap;)Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->availableTextureIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;

    .line 125
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;->access$000(Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;->access$100(Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private removeUsedTexture(I)Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->usedTextureIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 136
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 139
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public generateTexture(Landroid/graphics/Bitmap;)I
    .locals 7

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 157
    invoke-direct {p0, p1}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->lookForAvailableTexture(Landroid/graphics/Bitmap;)Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/16 v2, 0xde1

    if-nez v0, :cond_1

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 165
    invoke-static {v0, v5, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 166
    aget v0, v5, v1

    .line 168
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0x2801

    const v6, 0x46180400    # 9729.0f

    .line 169
    invoke-static {v2, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2800

    .line 170
    invoke-static {v2, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2802

    const v6, 0x47012f00    # 33071.0f

    .line 171
    invoke-static {v2, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2803

    .line 172
    invoke-static {v2, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 174
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Texture Provider - Binding texture - New texture name configured and generated :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 177
    :cond_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 178
    invoke-static {v2, v1, p1, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 180
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->usedTextureIds:Ljava/util/HashMap;

    new-instance v2, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture Provider - Binding texture - [Perf Measurment] Time to generate texture ID + memory allocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->availableTextureIds:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 185
    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->usedTextureIds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 188
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 189
    invoke-static {v2, v1, v1, v1, p1}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 190
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Texture Provider - Binding texture - [Perf Measurment] Time to pass bitmap to openGL is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_2
    move v0, v3

    .line 194
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "texImage2D "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture Provider - Binding texture - Bitmap @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " binded to GL texture "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_5

    .line 199
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Texture Provider - Binding texture - WARNING !!! Can\'t create a valid texture, there seems to be no more ressource on the device !!!"

    .line 200
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_5
    return v0

    .line 159
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The passed bitmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is either null or already recycled. Can\'t create a texture out of a recycled or null bitmap sorry..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultTextureID()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 57
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultTextureID:I

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Texture Provider - Get Default Texture ID - Generating the default texture ID"

    .line 59
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->generateTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultTextureID:I

    .line 62
    :cond_1
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultTextureID:I

    return v0
.end method

.method public releaseAll()V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 95
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Texture Provider - Release All - Release ALL textures"

    .line 96
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->availableTextureIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->usedTextureIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 100
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->availableTextureIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 101
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->usedTextureIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 105
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    .line 112
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const-string v0, "Delete All Texure"

    .line 113
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 116
    :cond_3
    iput v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultTextureID:I

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->availableTextureIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->usedTextureIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public releaseTexture(I)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 213
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultTextureID:I

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 215
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Texture Provider - Release texture - releasing the texture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->removeUsedTexture(I)Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 222
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->availableTextureIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 223
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->availableTextureIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 225
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete Texure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 230
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Texture Provider - Release texture - size of available texture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->availableTextureIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " size of used texture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->usedTextureIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 220
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find the textureID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in the used texture vectors !"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method

.method public updateDefaultTextureBackgroundColor(I)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->glThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 71
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Texture Provider - Update default Texture bg color - Updating the texture background color to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 77
    iget p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultTextureID:I

    if-eqz p1, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->removeUsedTexture(I)Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;

    const/4 p1, 0x1

    new-array v0, p1, [I

    .line 82
    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultTextureID:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delete Texure "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultTextureID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->generateTexture(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->defaultTextureID:I

    return-void
.end method
