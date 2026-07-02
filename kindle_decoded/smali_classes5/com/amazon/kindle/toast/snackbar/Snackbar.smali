.class Lcom/amazon/kindle/toast/snackbar/Snackbar;
.super Ljava/lang/Object;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;,
        Lcom/amazon/kindle/toast/snackbar/Snackbar$Callback;
    }
.end annotation


# static fields
.field private static final MSG_DISMISS:I = 0x1

.field private static final MSG_SHOW:I

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mCallback:Lcom/amazon/kindle/toast/snackbar/Snackbar$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private final mManagerCallback:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field private final mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/toast/snackbar/Snackbar$1;

    invoke-direct {v2}, Lcom/amazon/kindle/toast/snackbar/Snackbar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Lcom/amazon/kindle/toast/snackbar/Snackbar$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar$3;-><init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;)V

    iput-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mManagerCallback:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;

    .line 137
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mTargetParent:Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 141
    sget v0, Lcom/amazon/kindle/krl/R$layout;->layout_snackbar:I

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/toast/snackbar/Snackbar;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->showView()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/toast/snackbar/Snackbar;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->hideView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/toast/snackbar/Snackbar;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->dispatchDismiss(I)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/toast/snackbar/Snackbar;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->isShownOrQueued()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/toast/snackbar/Snackbar;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->onViewHidden(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kindle/toast/snackbar/Snackbar;)Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/toast/snackbar/Snackbar;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->onViewShown()V

    return-void
.end method

.method private dispatchDismiss(I)V
    .locals 2

    .line 324
    invoke-static {}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->getInstance()Lcom/amazon/kindle/toast/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mManagerCallback:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->dismiss(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;I)V

    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    .line 193
    :cond_0
    instance-of v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 195
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 196
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_2

    .line 200
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 203
    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p0, :cond_5

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 210
    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    return-object v1
.end method

.method private hideView(I)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->onViewHidden(I)V

    return-void
.end method

.method private isShownOrQueued()Z
    .locals 2

    .line 348
    invoke-static {}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->getInstance()Lcom/amazon/kindle/toast/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mManagerCallback:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->isCurrentOrNext(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/amazon/kindle/toast/snackbar/Snackbar;
    .locals 1

    .line 163
    new-instance v0, Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-static {p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;-><init>(Landroid/view/ViewGroup;)V

    .line 164
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/toast/snackbar/Snackbar;

    .line 165
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->setDuration(I)Lcom/amazon/kindle/toast/snackbar/Snackbar;

    return-object v0
.end method

.method private onViewHidden(I)V
    .locals 2

    .line 417
    invoke-static {}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->getInstance()Lcom/amazon/kindle/toast/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mManagerCallback:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->onDismissed(Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)V

    .line 419
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mCallback:Lcom/amazon/kindle/toast/snackbar/Snackbar$Callback;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p0, p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar$Callback;->onDismissed(Lcom/amazon/kindle/toast/snackbar/Snackbar;I)V

    .line 423
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 424
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 425
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private onViewShown()V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mCallback:Lcom/amazon/kindle/toast/snackbar/Snackbar$Callback;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar$Callback;->onShown(Lcom/amazon/kindle/toast/snackbar/Snackbar;)V

    :cond_0
    return-void
.end method

.method private showView()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    new-instance v1, Lcom/amazon/kindle/toast/snackbar/Snackbar$4;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar$4;-><init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->setOnAttachStateChangeListener(Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnAttachStateChangeListener;)V

    .line 390
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->onViewShown()V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    new-instance v1, Lcom/amazon/kindle/toast/snackbar/Snackbar$5;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/toast/snackbar/Snackbar$5;-><init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x3

    .line 320
    invoke-direct {p0, v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->dispatchDismiss(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/amazon/kindle/toast/snackbar/Snackbar;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/TextView;

    move-result-object v0

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    new-instance p1, Lcom/amazon/kindle/toast/snackbar/Snackbar$2;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kindle/toast/snackbar/Snackbar$2;-><init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 240
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 241
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object p0
.end method

.method public setDuration(I)Lcom/amazon/kindle/toast/snackbar/Snackbar;
    .locals 0

    .line 287
    iput p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mDuration:I

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/toast/snackbar/Snackbar;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mView:Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 265
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public show()V
    .locals 3

    .line 313
    invoke-static {}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->getInstance()Lcom/amazon/kindle/toast/snackbar/SnackbarManager;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mDuration:I

    iget-object v2, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar;->mManagerCallback:Lcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/toast/snackbar/SnackbarManager;->show(ILcom/amazon/kindle/toast/snackbar/SnackbarManager$Callback;)V

    return-void
.end method
