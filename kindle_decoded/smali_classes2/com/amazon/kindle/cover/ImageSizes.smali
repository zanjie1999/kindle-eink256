.class public Lcom/amazon/kindle/cover/ImageSizes;
.super Ljava/lang/Object;
.source "ImageSizes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cover/ImageSizes$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kindle/cover/ImageSizes;


# instance fields
.field private sizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/cover/ImageSizes$Type;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/models/BookType;",
            "Lcom/amazon/kindle/util/drawing/Dimension;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kindle/cover/ImageSizes;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cover/ImageSizes;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 105
    sput-object v0, Lcom/amazon/kindle/cover/ImageSizes;->instance:Lcom/amazon/kindle/cover/ImageSizes;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/cover/ImageSizes$Type;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/models/BookType;",
            "Lcom/amazon/kindle/util/drawing/Dimension;",
            ">;>;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/amazon/kindle/cover/ImageSizes;->sizes:Ljava/util/Map;

    .line 120
    iput-object p1, p0, Lcom/amazon/kindle/cover/ImageSizes;->sizes:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/cover/ImageSizes$Type;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/models/BookType;",
            "Lcom/amazon/kindle/util/drawing/Dimension;",
            ">;>;)",
            "Lcom/amazon/kindle/cover/ImageSizes;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes;->instance:Lcom/amazon/kindle/cover/ImageSizes;

    if-nez v0, :cond_1

    .line 109
    const-class v0, Lcom/amazon/kindle/cover/ImageSizes;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes;->instance:Lcom/amazon/kindle/cover/ImageSizes;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/amazon/kindle/cover/ImageSizes;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/cover/ImageSizes;-><init>(Ljava/util/Map;)V

    sput-object v1, Lcom/amazon/kindle/cover/ImageSizes;->instance:Lcom/amazon/kindle/cover/ImageSizes;

    .line 113
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 116
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kindle/cover/ImageSizes;->instance:Lcom/amazon/kindle/cover/ImageSizes;

    return-object p0
.end method

.method private isValidImageSize(Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/cover/ImageSizes$Type;II)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/cover/ImageSizes;->sizes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 179
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/util/drawing/Dimension;

    if-nez p1, :cond_1

    .line 181
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/util/drawing/Dimension;

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 188
    :cond_2
    iget p2, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    if-ge p3, p2, :cond_4

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    if-lt p4, p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/cover/ImageSizes;->sizes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/util/drawing/Dimension;

    if-eqz p2, :cond_1

    return-object p2

    .line 134
    :cond_1
    sget-object p2, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/util/drawing/Dimension;

    return-object p1
.end method

.method public getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I
    .locals 0

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/cover/ImageSizes;->getDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 150
    :cond_0
    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    return p1
.end method

.method public getTypeByWidthHeight(Lcom/amazon/kcp/library/models/BookType;II)Lcom/amazon/kindle/cover/ImageSizes$Type;
    .locals 1

    .line 154
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kindle/cover/ImageSizes;->isValidImageSize(Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/cover/ImageSizes$Type;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p1

    .line 157
    :cond_0
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kindle/cover/ImageSizes;->isValidImageSize(Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/cover/ImageSizes$Type;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p1

    .line 160
    :cond_1
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kindle/cover/ImageSizes;->isValidImageSize(Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/cover/ImageSizes$Type;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p1

    .line 163
    :cond_2
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/kindle/cover/ImageSizes;->isValidImageSize(Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/cover/ImageSizes$Type;II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 164
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p1

    .line 167
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/cover/ImageSizes;->sizes:Ljava/util/Map;

    sget-object p2, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 168
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p1

    .line 170
    :cond_4
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p1
.end method

.method public getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I
    .locals 0

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/cover/ImageSizes;->getDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 142
    :cond_0
    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    return p1
.end method
