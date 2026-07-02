.class public Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;
.super Ljava/lang/Object;
.source "DominantColorGenerator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.readingactions.ui.helpers.DominantColorGenerator"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final defaultColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    iput p2, p0, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->defaultColor:I

    return-void
.end method

.method private generateColorHistogram([I)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 59
    aget v3, p1, v2

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 66
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getColorHavingMaxCount(Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 77
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_1
    return v0
.end method

.method private reduceBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 50
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public generateDominantColor()I
    .locals 9

    .line 24
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 25
    iget v0, p0, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->defaultColor:I

    return v0

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 30
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v0, v7, v8

    .line 32
    new-array v0, v0, [I

    .line 34
    iget-object v1, p0, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->reduceBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move v4, v7

    .line 35
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 37
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->generateColorHistogram([I)Ljava/util/HashMap;

    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->getColorHavingMaxCount(Ljava/util/HashMap;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 42
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    sget-object v1, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->TAG:Ljava/lang/String;

    const-string v2, "Error when generating dominant color from book cover"

    invoke-static {v1, v2, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :cond_1
    iget v0, p0, Lcom/amazon/readingactions/ui/helpers/DominantColorGenerator;->defaultColor:I

    return v0
.end method
