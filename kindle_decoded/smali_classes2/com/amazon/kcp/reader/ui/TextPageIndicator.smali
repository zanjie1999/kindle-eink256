.class public Lcom/amazon/kcp/reader/ui/TextPageIndicator;
.super Landroid/widget/TextView;
.source "TextPageIndicator.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/IPageIndicator;


# static fields
.field private static final DEFAULT_FORMAT:Ljava/lang/String; = "%d/%d"


# instance fields
.field private format:Ljava/lang/String;

.field private totalPages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, "%d/%d"

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TextPageIndicator;->format:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "%d/%d"

    .line 30
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextPageIndicator;->format:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/TextPageIndicator;->applyCustomFormat(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "%d/%d"

    .line 30
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/TextPageIndicator;->format:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/TextPageIndicator;->applyCustomFormat(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyCustomFormat(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krl/R$styleable;->TextPageIndicator:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    :try_start_0
    sget p2, Lcom/amazon/kindle/krl/R$styleable;->TextPageIndicator_formatString:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 60
    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/TextPageIndicator;->isValidFormat(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/TextPageIndicator;->format:Ljava/lang/String;

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    throw p2
.end method

.method private static isValidFormat(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public setItemCount(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/amazon/kcp/reader/ui/TextPageIndicator;->totalPages:I

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TextPageIndicator;->format:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget p1, p0, Lcom/amazon/kcp/reader/ui/TextPageIndicator;->totalPages:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
