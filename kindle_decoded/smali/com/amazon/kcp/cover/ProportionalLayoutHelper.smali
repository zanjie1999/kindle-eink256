.class public final Lcom/amazon/kcp/cover/ProportionalLayoutHelper;
.super Ljava/lang/Object;
.source "ProportionalLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;
    }
.end annotation


# static fields
.field private static volatile isInitialized:Z

.field private static referenceAuthorTextSize:I

.field private static referenceBottomMargin:I

.field private static referenceHeight:I

.field private static referenceHorzMargin:I

.field private static referenceTitleTextSize:I

.field private static referenceTopMargin:I

.field private static referenceWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static final calculateLayout(Landroid/content/Context;II)Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;
    .locals 6

    .line 66
    invoke-static {p0}, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->ensureInitialized(Landroid/content/Context;)V

    .line 67
    new-instance p0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;

    sget v0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceHorzMargin:I

    mul-int v0, v0, p1

    sget p1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceWidth:I

    div-int v1, v0, p1

    sget p1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceTopMargin:I

    mul-int p1, p1, p2

    sget v0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceHeight:I

    div-int v2, p1, v0

    sget p1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceBottomMargin:I

    mul-int p1, p1, p2

    div-int v3, p1, v0

    sget p1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceTitleTextSize:I

    mul-int p1, p1, p2

    div-int v4, p1, v0

    sget p1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceAuthorTextSize:I

    mul-int p1, p1, p2

    div-int v5, p1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/ProportionalLayoutHelper$Layout;-><init>(IIIII)V

    return-object p0
.end method

.method private static ensureInitialized(Landroid/content/Context;)V
    .locals 2

    .line 30
    sget-boolean v0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->isInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    const-class v0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-boolean v1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->isInitialized:Z

    if-eqz v1, :cond_1

    .line 36
    monitor-exit v0

    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 40
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_proportional_layout_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceWidth:I

    .line 41
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_proportional_layout_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceHeight:I

    .line 42
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_proportional_layout_horz_margin:I

    .line 43
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceHorzMargin:I

    .line 44
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_proportional_layout_top_margin:I

    .line 45
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceTopMargin:I

    .line 46
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_proportional_layout_bottom_margin:I

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceBottomMargin:I

    .line 48
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_proportional_layout_title_text_size:I

    .line 49
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceTitleTextSize:I

    .line 50
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->generated_cover_proportional_layout_author_text_size:I

    .line 51
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->referenceAuthorTextSize:I

    const/4 p0, 0x1

    .line 53
    sput-boolean p0, Lcom/amazon/kcp/cover/ProportionalLayoutHelper;->isInitialized:Z

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
