.class public Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "AnnotationsManagerDebugMenuPage.java"


# instance fields
.field private final annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->context:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/amazon/kcp/application/AnnotationCache;->getInstance()Lcom/amazon/kcp/application/IAnnotationCache;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;)Lcom/amazon/kcp/application/IAnnotationCache;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Annotations Manager Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 35
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 39
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "Open Annotation Viewer"

    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v2, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$1;-><init>(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v2, "Suppress annotation sync"

    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v2, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAnnotationCache;->isAnnotationSyncSuppressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 55
    new-instance v2, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$2;-><init>(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v2, "Garble journal upload URL"

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAnnotationCache;->getGarbleJournalUploadUrl()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    new-instance v2, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$3;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$3;-><init>(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method
