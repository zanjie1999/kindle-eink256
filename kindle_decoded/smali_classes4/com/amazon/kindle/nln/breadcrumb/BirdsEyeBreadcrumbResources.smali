.class public Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources;
.super Ljava/lang/Object;
.source "BirdsEyeBreadcrumbResources.java"

# interfaces
.implements Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;


# instance fields
.field private bottomBreadcrumbBackground:I

.field private topBreadcrumbBackground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources;->updateResources(Landroid/content/Context;)V

    return-void
.end method

.method private updateResources(Landroid/content/Context;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/amazon/kindle/krl/R$styleable;->BirdsEyeBreadcrumbs:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    sget v0, Lcom/amazon/kindle/krl/R$styleable;->BirdsEyeBreadcrumbs_readerBreadcrumbBackgroundTop:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources;->topBreadcrumbBackground:I

    .line 31
    sget v0, Lcom/amazon/kindle/krl/R$styleable;->BirdsEyeBreadcrumbs_readerBreadcrumbBackgroundBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources;->bottomBreadcrumbBackground:I

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getBreadcrumbAnimationId(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;Z)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 41
    :cond_0
    sget-object v1, Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources$1;->$SwitchMap$com$amazon$kindle$nln$breadcrumb$BreadcrumbInfo$Direction:[I

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

    .line 45
    sget p1, Lcom/amazon/kindle/krl/R$anim;->slide_in_bottom:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$anim;->slide_out_bottom:I

    :goto_0
    return p1

    :cond_3
    if-eqz p2, :cond_4

    .line 43
    sget p1, Lcom/amazon/kindle/krl/R$anim;->slide_in_top:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/amazon/kindle/krl/R$anim;->slide_out_top:I

    :goto_1
    return p1
.end method

.method public getBreadcrumbBackgroundRes(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;)I
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources$1;->$SwitchMap$com$amazon$kindle$nln$breadcrumb$BreadcrumbInfo$Direction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    iget p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources;->bottomBreadcrumbBackground:I

    return p1

    .line 55
    :cond_1
    iget p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources;->topBreadcrumbBackground:I

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BirdsEyeBreadcrumbResources;->updateResources(Landroid/content/Context;)V

    return-void
.end method

.method public setBreadcrumbResourceDirection(I)V
    .locals 0

    return-void
.end method
