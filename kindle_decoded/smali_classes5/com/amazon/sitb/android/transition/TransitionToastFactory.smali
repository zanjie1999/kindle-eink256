.class public Lcom/amazon/sitb/android/transition/TransitionToastFactory;
.super Ljava/lang/Object;
.source "TransitionToastFactory.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/sitb/android/transition/TransitionToastFactory;->context:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/sitb/android/transition/TransitionToastFactory;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private createToast(Ljava/lang/String;)Landroid/widget/Toast;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionToastFactory;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x11

    .line 42
    invoke-virtual {p1, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    return-object p1
.end method


# virtual methods
.method public createSampleToast()Landroid/widget/Toast;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/TransitionToastFactory;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_sample_transition:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/sitb/android/transition/TransitionToastFactory;->createToast(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public createSeriesToast(Lcom/amazon/kindle/krx/content/IBook;)Landroid/widget/Toast;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/sitb/android/transition/TransitionToastFactory;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_full_transition:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/transition/TransitionToastFactory;->createToast(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p1

    return-object p1
.end method
