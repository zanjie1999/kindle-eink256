.class public Lcom/amazon/kindle/nn/NNAdjustmentDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "NNAdjustmentDialog.java"


# static fields
.field private static final MAX_WORDS:I = 0x14

.field public static animationDurationScale:F = 1.0f

.field protected static quickHighlightMinWords:I = 0x5


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

.method static synthetic access$000(Lcom/amazon/kindle/nn/NNAdjustmentDialog;I)F
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->progressToDurationScale(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/nn/NNAdjustmentDialog;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->getDurationScaleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/nn/NNAdjustmentDialog;)Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/nn/NNAdjustmentDialog;I)I
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->progressToMinWords(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/nn/NNAdjustmentDialog;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->getMinWordsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

.method private getDurationScaleString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation Speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->animationDurationScale:F

    invoke-direct {p0, v1}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->getScaleDisplayString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMinWordsString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quick Highlight min words: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->quickHighlightMinWords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 1

    .line 96
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    return-object v0
.end method

.method private getScaleDisplayString(F)Ljava/lang/String;
    .locals 4

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    .line 112
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

    .line 114
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

    .line 119
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%.2fx"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private minWordsToProgress(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x64

    .line 127
    div-int/lit8 p1, p1, 0x13

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

.method private progressToMinWords(I)I
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41980000    # 19.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 123
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 38
    sget p3, Lcom/amazon/kindle/krl/R$layout;->nn_adjustments_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    sget p2, Lcom/amazon/kindle/krl/R$id;->scale_scrubber:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    .line 41
    sget p3, Lcom/amazon/kindle/krl/R$id;->scale:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 42
    new-instance v0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$1;

    invoke-direct {v0, p0, p3}, Lcom/amazon/kindle/nn/NNAdjustmentDialog$1;-><init>(Lcom/amazon/kindle/nn/NNAdjustmentDialog;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 57
    sget v0, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->animationDurationScale:F

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->durationScaleToProgress(F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 58
    invoke-direct {p0}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->getDurationScaleString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget p2, Lcom/amazon/kindle/krl/R$id;->qh_min_words_scrubber:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    .line 61
    sget p3, Lcom/amazon/kindle/krl/R$id;->qh_min_words:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 62
    new-instance v0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$2;

    invoke-direct {v0, p0, p3}, Lcom/amazon/kindle/nn/NNAdjustmentDialog$2;-><init>(Lcom/amazon/kindle/nn/NNAdjustmentDialog;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    sget v0, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->quickHighlightMinWords:I

    invoke-direct {p0, v0}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->minWordsToProgress(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    invoke-direct {p0}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->getMinWordsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
