.class public Lcom/amazon/kindle/cms/api/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# static fields
.field private static final BASE_EXPLORE_SIZE:F = 100.0f

.field private static final BASE_LARGE_SIZE:F = 333.33f

.field private static final BASE_SMALL_SIZE:F = 166.67f

.field private static final IMAGE_PATH_HEADER:Ljava/lang/String; = "file://"

.field private static final PATH_DEFAULT:Ljava/lang/String; = ""

.field private static final s_displayMetrics:Landroid/util/DisplayMetrics;


# instance fields
.field private final m_explorePath:Ljava/lang/String;

.field private final m_largeIconPath:Ljava/lang/String;

.field private final m_model:Lcom/amazon/kindle/cms/api/Model;

.field private final m_smallIconPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 259
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/api/Thumbnail;->s_displayMetrics:Landroid/util/DisplayMetrics;

    .line 263
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/kindle/cms/api/Model;->NO_MODEL:Lcom/amazon/kindle/cms/api/Model;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/cms/api/Thumbnail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/Model;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/Model;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/Thumbnail;->m_largeIconPath:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/amazon/kindle/cms/api/Thumbnail;->m_smallIconPath:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, ""

    .line 122
    :cond_0
    iput-object p3, p0, Lcom/amazon/kindle/cms/api/Thumbnail;->m_explorePath:Ljava/lang/String;

    if-eqz p4, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    sget-object p4, Lcom/amazon/kindle/cms/api/Model;->NO_MODEL:Lcom/amazon/kindle/cms/api/Model;

    :goto_0
    iput-object p4, p0, Lcom/amazon/kindle/cms/api/Thumbnail;->m_model:Lcom/amazon/kindle/cms/api/Model;

    return-void
.end method


# virtual methods
.method public getExplorePath()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/Thumbnail;->m_explorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getModelUri()Landroid/net/Uri;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/Thumbnail;->m_model:Lcom/amazon/kindle/cms/api/Model;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/Model;->getModelUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getRawLargePath()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/Thumbnail;->m_largeIconPath:Ljava/lang/String;

    return-object v0
.end method

.method getRawLargeTexturesPath()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/Thumbnail;->m_model:Lcom/amazon/kindle/cms/api/Model;

    iget-object v0, v0, Lcom/amazon/kindle/cms/api/Model;->largeTextures:Ljava/lang/String;

    return-object v0
.end method

.method getRawSmallPath()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/Thumbnail;->m_smallIconPath:Ljava/lang/String;

    return-object v0
.end method

.method getRawSmallTexturesPath()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/Thumbnail;->m_model:Lcom/amazon/kindle/cms/api/Model;

    iget-object v0, v0, Lcom/amazon/kindle/cms/api/Model;->smallTextures:Ljava/lang/String;

    return-object v0
.end method
