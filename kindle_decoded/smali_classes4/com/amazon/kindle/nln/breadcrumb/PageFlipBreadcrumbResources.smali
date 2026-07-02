.class public Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;
.super Ljava/lang/Object;
.source "PageFlipBreadcrumbResources.java"

# interfaces
.implements Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;


# instance fields
.field private contentDirection:I

.field private endBreadcrumbAnimIn:I

.field private endBreadcrumbAnimOut:I

.field private endBreadcrumbBackground:I

.field private startBreadcrumbAnimIn:I

.field private startBreadcrumbAnimOut:I

.field private startBreadcrumbBackground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->contentDirection:I

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->updateResources(Landroid/content/Context;)V

    return-void
.end method

.method private initializeBackgroundResources()V
    .locals 2

    .line 83
    iget v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->contentDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->startBreadcrumbBackground:I

    .line 85
    iget v1, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->endBreadcrumbBackground:I

    iput v1, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->startBreadcrumbBackground:I

    .line 86
    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->endBreadcrumbBackground:I

    .line 88
    sget v0, Lcom/amazon/kindle/krl/R$anim;->self_slide_in_right:I

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->startBreadcrumbAnimIn:I

    .line 89
    sget v0, Lcom/amazon/kindle/krl/R$anim;->self_slide_out_right:I

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->startBreadcrumbAnimOut:I

    .line 91
    sget v0, Lcom/amazon/kindle/krl/R$anim;->self_slide_in_left:I

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->endBreadcrumbAnimIn:I

    .line 92
    sget v0, Lcom/amazon/kindle/krl/R$anim;->self_slide_out_left:I

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->endBreadcrumbAnimOut:I

    goto :goto_0

    .line 94
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$anim;->self_slide_in_left:I

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->startBreadcrumbAnimIn:I

    .line 95
    sget v0, Lcom/amazon/kindle/krl/R$anim;->self_slide_out_left:I

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->startBreadcrumbAnimOut:I

    .line 97
    sget v0, Lcom/amazon/kindle/krl/R$anim;->self_slide_in_right:I

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->endBreadcrumbAnimIn:I

    .line 98
    sget v0, Lcom/amazon/kindle/krl/R$anim;->self_slide_out_right:I

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->endBreadcrumbAnimOut:I

    :goto_0
    return-void
.end method

.method private updateResources(Landroid/content/Context;)V
    .locals 2

    .line 35
    sget-object v0, Lcom/amazon/kindle/krl/R$styleable;->PageFlipBreadcrumbs:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    sget v0, Lcom/amazon/kindle/krl/R$styleable;->PageFlipBreadcrumbs_readerBreadcrumbBackgroundLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->startBreadcrumbBackground:I

    .line 37
    sget v0, Lcom/amazon/kindle/krl/R$styleable;->PageFlipBreadcrumbs_readerBreadcrumbBackgroundRight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->endBreadcrumbBackground:I

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->initializeBackgroundResources()V

    return-void
.end method


# virtual methods
.method public getBreadcrumbAnimationId(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;Z)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 49
    :cond_0
    sget-object v1, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources$1;->$SwitchMap$com$amazon$kindle$nln$breadcrumb$BreadcrumbInfo$Direction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 53
    iget p1, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->endBreadcrumbAnimIn:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->endBreadcrumbAnimOut:I

    :goto_0
    return p1

    :cond_3
    if-eqz p2, :cond_4

    .line 51
    iget p1, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->startBreadcrumbAnimIn:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->startBreadcrumbAnimOut:I

    :goto_1
    return p1
.end method

.method public getBreadcrumbBackgroundRes(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;)I
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources$1;->$SwitchMap$com$amazon$kindle$nln$breadcrumb$BreadcrumbInfo$Direction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    iget p1, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->endBreadcrumbBackground:I

    return p1

    .line 64
    :cond_1
    iget p1, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->startBreadcrumbBackground:I

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->updateResources(Landroid/content/Context;)V

    return-void
.end method

.method public setBreadcrumbResourceDirection(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->contentDirection:I

    .line 76
    invoke-direct {p0}, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;->initializeBackgroundResources()V

    return-void
.end method
