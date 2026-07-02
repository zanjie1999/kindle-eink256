.class public Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;
.super Ljava/lang/Object;
.source "BadgeResourceChooser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final gridResourceIds:[I

.field private final listResourceIds:[I

.field private final theme:Lcom/amazon/kindle/krx/theme/Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 27
    sget-object v1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover:[I

    sget v2, Lcom/amazon/kindle/librarymodule/R$attr;->badgeable_cover_style:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->gridResourceIds:[I

    const/4 v2, 0x0

    .line 29
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 31
    iget-object v5, p0, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->gridResourceIds:[I

    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    sget-object v1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow:[I

    sget v2, Lcom/amazon/kindle/librarymodule/R$attr;->library_book_row_style:I

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->listResourceIds:[I

    .line 37
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_1

    .line 38
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 39
    iget-object v2, p0, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->listResourceIds:[I

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->library_book_row_style:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 44
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    sget v0, Lcom/amazon/kindle/librarymodule/R$style;->library_book_row:I

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_2
    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    return-void
.end method


# virtual methods
.method public getGridBadgeId(I)I
    .locals 2

    if-ltz p1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->gridResourceIds:[I

    array-length v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    aget p1, v0, p1

    return p1

    .line 49
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->TAG:Ljava/lang/String;

    const-string v0, "badge index out of bounds"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getListBadgeId(I)I
    .locals 2

    if-ltz p1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->listResourceIds:[I

    array-length v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    aget p1, v0, p1

    return p1

    .line 58
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->TAG:Ljava/lang/String;

    const-string v0, "badge index out of bounds"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getTheme()Lcom/amazon/kindle/krx/theme/Theme;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    return-object v0
.end method
