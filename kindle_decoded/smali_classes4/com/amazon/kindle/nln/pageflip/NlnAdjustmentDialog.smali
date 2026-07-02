.class public Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "NlnAdjustmentDialog.java"


# static fields
.field private static isStrict:Z = false


# instance fields
.field private breadcrumbFade:Landroid/widget/CheckedTextView;

.field private breadcrumbSeeker:Landroid/widget/SeekBar;

.field private breadcrumbShiftSeeker:Landroid/widget/SeekBar;

.field private breadcrumbShiftText:Landroid/widget/TextView;

.field private breadcrumbText:Landroid/widget/TextView;

.field private coeffSeeker:Landroid/widget/SeekBar;

.field private coeffText:Landroid/widget/TextView;

.field private durationSeeker:Landroid/widget/SeekBar;

.field private durationText:Landroid/widget/TextView;

.field private enableAnimation:Landroid/widget/CheckedTextView;

.field private interpolator:Landroid/widget/CheckedTextView;

.field private labelPages:Landroid/widget/CheckedTextView;

.field private maxJumpSeeker:Landroid/widget/SeekBar;

.field private maxJumpText:Landroid/widget/TextView;

.field private percentSeeker:Landroid/widget/SeekBar;

.field private percentText:Landroid/widget/TextView;

.field private showWaypointBreadcrumb:Landroid/widget/CheckedTextView;

.field private strict:Landroid/widget/CheckedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbFade:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->showWaypointBreadcrumb:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;F)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->getCoeffString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->coeffText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->interpolator:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->strict:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 23
    sget-boolean v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->isStrict:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0

    .line 23
    sput-boolean p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->isStrict:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;I)F
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->progressToBreadcrumbScale(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;F)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->getBreadcrumbDisplayString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbShiftText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->labelPages:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->enableAnimation:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->percentText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;I)J
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->progressToJumpDuration(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;J)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->getJumpDisplayString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->maxJumpText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;I)F
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->progressToDurationScale(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;F)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->getScaleDisplayString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->durationText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;I)F
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->progressToCoeff(I)F

    move-result p0

    return p0
.end method

.method private breadcrumbScaleToProgress(F)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private coeffToProgress(F)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private durationScaleToProgress(F)I
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    sub-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private getBreadcrumbDisplayString(F)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    .line 304
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 305
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%.2fx"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCoeffString(F)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    .line 269
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 270
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%.2f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getJumpDisplayString(J)Ljava/lang/String;
    .locals 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x1f4

    add-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getScaleDisplayString(F)Ljava/lang/String;
    .locals 4

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    .line 310
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 312
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "1 / %.2fx"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    div-float p1, v2, p1

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 317
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%.2fx"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private jumpDurationToProgress(J)I
    .locals 0

    long-to-int p2, p1

    add-int/lit8 p2, p2, -0x64

    .line 274
    div-int/lit8 p2, p2, 0x9

    return p2
.end method

.method private progressToBreadcrumbScale(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p1, p1, v0

    .line 300
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method

.method private progressToCoeff(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    return p1
.end method

.method private progressToDurationScale(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    add-float/2addr p1, v0

    return p1
.end method

.method private progressToJumpDuration(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x9

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 57
    sget p3, Lcom/amazon/kindle/krl/R$layout;->animation_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 60
    sget p3, Lcom/amazon/kindle/krl/R$id;->bc_fade:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbFade:Landroid/widget/CheckedTextView;

    .line 61
    sget-boolean v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->doBreadcrumbFade:Z

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 62
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbFade:Landroid/widget/CheckedTextView;

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$1;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget p3, Lcom/amazon/kindle/krl/R$id;->bc_show_waypoint:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->showWaypointBreadcrumb:Landroid/widget/CheckedTextView;

    .line 71
    sget-boolean v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->shouldShowWaypointBreadcrumb:Z

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 72
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->showWaypointBreadcrumb:Landroid/widget/CheckedTextView;

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$2;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget p3, Lcom/amazon/kindle/krl/R$id;->enable_animation:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->enableAnimation:Landroid/widget/CheckedTextView;

    .line 81
    sget-boolean v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->enableTransitionAnimation:Z

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 82
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->enableAnimation:Landroid/widget/CheckedTextView;

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$3;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget p3, Lcom/amazon/kindle/krl/R$id;->max_jump_scrubber:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->maxJumpSeeker:Landroid/widget/SeekBar;

    .line 91
    sget p3, Lcom/amazon/kindle/krl/R$id;->max_jump_duration:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->maxJumpText:Landroid/widget/TextView;

    .line 92
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->maxJumpSeeker:Landroid/widget/SeekBar;

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$4;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$4;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 107
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->maxJumpSeeker:Landroid/widget/SeekBar;

    sget-wide v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->maxJumpDuration:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->jumpDurationToProgress(J)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 108
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->maxJumpText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max jump duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->maxJumpDuration:J

    invoke-direct {p0, v1, v2}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->getJumpDisplayString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget p3, Lcom/amazon/kindle/krl/R$id;->scale_scrubber:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->durationSeeker:Landroid/widget/SeekBar;

    .line 111
    sget p3, Lcom/amazon/kindle/krl/R$id;->scale:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->durationText:Landroid/widget/TextView;

    .line 112
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->durationSeeker:Landroid/widget/SeekBar;

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$5;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$5;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 127
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->durationSeeker:Landroid/widget/SeekBar;

    sget v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->durationScaleToProgress(F)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->durationText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    invoke-direct {p0, v1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->getScaleDisplayString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    sget p3, Lcom/amazon/kindle/krl/R$id;->coeff_scrubber:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->coeffSeeker:Landroid/widget/SeekBar;

    .line 132
    sget p3, Lcom/amazon/kindle/krl/R$id;->coeff:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->coeffText:Landroid/widget/TextView;

    .line 133
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->coeffSeeker:Landroid/widget/SeekBar;

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$6;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$6;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 148
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->coeffSeeker:Landroid/widget/SeekBar;

    sget v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->lutzCoefficient:F

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->coeffToProgress(F)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 149
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->coeffText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Coefficient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->lutzCoefficient:F

    invoke-direct {p0, v1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->getCoeffString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    sget p3, Lcom/amazon/kindle/krl/R$id;->interpolator:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->interpolator:Landroid/widget/CheckedTextView;

    .line 153
    sget-boolean v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 154
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->interpolator:Landroid/widget/CheckedTextView;

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$7;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$7;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget p3, Lcom/amazon/kindle/krl/R$id;->strict:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->strict:Landroid/widget/CheckedTextView;

    .line 164
    sget-boolean v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->isStrict:Z

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 165
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->strict:Landroid/widget/CheckedTextView;

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$8;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$8;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    sget p3, Lcom/amazon/kindle/krl/R$id;->breadcrumb_scrubber:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbSeeker:Landroid/widget/SeekBar;

    .line 186
    sget p3, Lcom/amazon/kindle/krl/R$id;->breadcrumb_size:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbText:Landroid/widget/TextView;

    .line 187
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbSeeker:Landroid/widget/SeekBar;

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$9;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$9;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 202
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbSeeker:Landroid/widget/SeekBar;

    sget v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbScale:F

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbScaleToProgress(F)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 203
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Breadcrumb size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbScale:F

    invoke-direct {p0, v1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->getBreadcrumbDisplayString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    sget p3, Lcom/amazon/kindle/krl/R$id;->breadcrumb_shift_scrubber:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbShiftSeeker:Landroid/widget/SeekBar;

    .line 206
    sget p3, Lcom/amazon/kindle/krl/R$id;->breadcrumb_shift:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbShiftText:Landroid/widget/TextView;

    .line 207
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbShiftSeeker:Landroid/widget/SeekBar;

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$10;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$10;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;F)V

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 223
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbShiftSeeker:Landroid/widget/SeekBar;

    sget v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbPageOffset:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 224
    iget-object p2, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->breadcrumbShiftText:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Breadcrumb shift: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbPageOffset:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "px"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    sget p2, Lcom/amazon/kindle/krl/R$id;->pageps:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    iput-object p2, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->labelPages:Landroid/widget/CheckedTextView;

    .line 227
    sget-boolean p3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->addLabels:Z

    invoke-virtual {p2, p3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 228
    iget-object p2, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->labelPages:Landroid/widget/CheckedTextView;

    new-instance p3, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$11;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$11;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    sget p2, Lcom/amazon/kindle/krl/R$id;->page_percent_scrubber:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->percentSeeker:Landroid/widget/SeekBar;

    .line 237
    sget p2, Lcom/amazon/kindle/krl/R$id;->page_percent_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->percentText:Landroid/widget/TextView;

    .line 238
    iget-object p2, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->percentSeeker:Landroid/widget/SeekBar;

    new-instance p3, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$12;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$12;-><init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 253
    sget p2, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->pageOnscreenCutoff:F

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 254
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->percentSeeker:Landroid/widget/SeekBar;

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 255
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->percentText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Percentage of page visible to hide breadcrumb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
