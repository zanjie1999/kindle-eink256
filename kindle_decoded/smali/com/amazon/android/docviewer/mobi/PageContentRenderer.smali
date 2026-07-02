.class final Lcom/amazon/android/docviewer/mobi/PageContentRenderer;
.super Ljava/lang/Object;
.source "PageContentRenderer.java"


# static fields
.field private static final ACTIVE_AREA_SELECTION_COLOR:I = 0x300000ff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_context:Landroid/content/Context;

.field private m_pageOffset:I

.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    return-void
.end method

.method private drawActiveAreas(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/mobi/KRFError;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_pageOffset:I

    if-nez v1, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTextNavigator()Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getActiveAreaInfoForDrawing()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;

    .line 113
    iget-wide v2, v1, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->type:J

    long-to-int v3, v2

    const/4 v2, 0x1

    if-eq v3, v2, :cond_0

    const/4 v2, 0x2

    if-eq v3, v2, :cond_0

    sparse-switch v3, :sswitch_data_0

    .line 134
    sget-object v2, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected invalid draw info type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->type:J

    long-to-int v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :sswitch_0
    invoke-direct {p0, p1, v1}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->drawMultimediaControl(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;)V

    goto :goto_0

    .line 118
    :sswitch_1
    invoke-direct {p0, p1, v1}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->drawTableNavigation(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;)V

    goto :goto_0

    .line 131
    :cond_0
    :sswitch_2
    invoke-direct {p0, p1, v1}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->drawSelectedActiveArea(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;)V

    goto :goto_0

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0x10 -> :sswitch_2
        0x20 -> :sswitch_2
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_1
        0x200 -> :sswitch_1
        0x400 -> :sswitch_1
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method private drawMultimediaControl(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;)V
    .locals 8

    if-eqz p2, :cond_8

    .line 142
    iget-object v0, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->rectangles:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 146
    :cond_0
    iget-object v0, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->rectangles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/system/drawing/Rectangle;

    .line 150
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->btn_reader_play_white_normal:I

    .line 151
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 153
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v3

    .line 154
    iget-wide v4, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->type:J

    const-wide/16 v6, 0x2000

    cmp-long p2, v4, v6

    if-nez p2, :cond_3

    .line 156
    sget-object p2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v3, p2, :cond_1

    .line 157
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->ic_audio_white_normal:I

    goto :goto_0

    .line 158
    :cond_1
    sget-object p2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v3, p2, :cond_2

    .line 159
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->ic_audio_sepia_normal:I

    goto :goto_0

    .line 162
    :cond_2
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->ic_audio_black_normal:I

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x1000

    cmp-long p2, v4, v6

    if-nez p2, :cond_6

    .line 166
    sget-object p2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v3, p2, :cond_4

    .line 167
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->btn_reader_play_white_normal:I

    goto :goto_0

    .line 170
    :cond_4
    sget-object p2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v3, p2, :cond_5

    .line 171
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->btn_reader_play_sepia_normal:I

    goto :goto_0

    .line 174
    :cond_5
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->btn_reader_play_black_normal:I

    .line 179
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 183
    iget v1, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Point;->x:I

    .line 184
    iget v1, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 187
    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 189
    :cond_7
    sget-object p1, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->TAG:Ljava/lang/String;

    const-string p2, "Unable to decode image resource for audio/video active areas!"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private drawSelectedActiveArea(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;)V
    .locals 9

    if-eqz p2, :cond_1

    .line 194
    iget-boolean v0, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->isSelected:Z

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->rectangles:Ljava/util/List;

    if-nez p2, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/system/drawing/Rectangle;

    .line 199
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getBookGraphics()Lcom/amazon/android/docviewer/graphics/BookGraphics;

    move-result-object v2

    iget v4, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v6, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v7, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    const v8, 0x300000ff

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/amazon/android/docviewer/graphics/BookGraphics;->fillRect(Landroid/graphics/Canvas;IIIII)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private drawTableNavigation(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;)V
    .locals 5

    if-eqz p2, :cond_5

    .line 212
    iget-object v0, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->rectangles:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 217
    :cond_0
    iget-object v0, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->rectangles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/system/drawing/Rectangle;

    .line 220
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 224
    iget-wide v2, p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->type:J

    long-to-int p2, v2

    const/16 v2, 0x80

    if-eq p2, v2, :cond_4

    const/16 v2, 0x100

    if-eq p2, v2, :cond_3

    const/16 v2, 0x200

    if-eq p2, v2, :cond_2

    const/16 v2, 0x400

    if-eq p2, v2, :cond_1

    return-void

    .line 238
    :cond_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->table_arrow_up:I

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 239
    iget v2, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 240
    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 244
    :cond_2
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->table_arrow_bottom:I

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 245
    iget v2, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 246
    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 226
    :cond_3
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->table_arrow_left:I

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 227
    iget v2, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 228
    iget v2, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 232
    :cond_4
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->table_arrow_right:I

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 233
    iget v2, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 234
    iget v2, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 255
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method getMobiPage()Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getInstance(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_pageOffset:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getMobiPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getPageOffset()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_pageOffset:I

    return v0
.end method

.method getPageRange()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_0

    .line 51
    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getInstance(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    move-result-object v0

    .line 52
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_pageOffset:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getPageRange()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isRenderDrawableReady()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getInstance(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    move-result-object v0

    .line 46
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_pageOffset:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->isReadyToDraw()Z

    move-result v0

    return v0
.end method

.method render(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->render(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method render(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 3

    .line 67
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 68
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getInstance(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    move-result-object v0

    .line 80
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_pageOffset:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1
    :try_end_0
    .catch Lcom/amazon/android/docviewer/mobi/KRFError; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p2, 0x0

    .line 89
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->drawActiveAreas(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 93
    throw p2
    :try_end_2
    .catch Lcom/amazon/android/docviewer/mobi/KRFError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 95
    sget-object p2, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "unable to render page"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method setPageOffset(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->m_pageOffset:I

    return-void
.end method
