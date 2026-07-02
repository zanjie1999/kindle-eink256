.class public Lcom/amazon/startactions/jit/BlockingTutorialFragment;
.super Landroid/app/DialogFragment;
.source "BlockingTutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;,
        Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;,
        Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;
    }
.end annotation


# static fields
.field private static LOG_TAG_0:Ljava/lang/String;

.field private static fragmentsToBeDismissed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/startactions/jit/BlockingTutorialFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private backButtonListener:Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;

.field private bottomPointerView:Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

.field private contentView:Landroid/view/View;

.field private dismissible:Z

.field private gravity:I

.field private holderView:Landroid/view/ViewParent;

.field private jitDialogDismissListener:Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;

.field private onDismissListener:Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;

.field private pointerColor:I

.field private pointerSize:F

.field private restored:Z

.field private targetView:Landroid/view/View;

.field private topPointerView:Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

.field private view:Lcom/amazon/startactions/jit/BlockingTutorialLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->LOG_TAG_0:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->fragmentsToBeDismissed:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->LOG_TAG:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->restored:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->backButtonListener:Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->onDismissListener:Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;

    return-object p0
.end method

.method public static createInstance(Landroid/view/View;Landroid/view/View;ZIFI)Lcom/amazon/startactions/jit/BlockingTutorialFragment;
    .locals 1

    .line 123
    new-instance v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-direct {v0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;-><init>()V

    .line 124
    iput-boolean p2, v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->dismissible:Z

    .line 125
    iput p3, v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->gravity:I

    .line 126
    iput p4, v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->pointerSize:F

    .line 127
    iput p5, v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->pointerColor:I

    .line 128
    iput-object p0, v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->targetView:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->holderView:Landroid/view/ViewParent;

    .line 130
    iput-object p1, v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->contentView:Landroid/view/View;

    return-object v0
.end method

.method private getBubbleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5

    .line 182
    new-instance v0, Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->pointerColor:I

    const/16 v3, 0x30

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/startactions/jit/BlockingTutorialPointerView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->topPointerView:Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    .line 183
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->pointerSize:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v2, v3

    float-to-int v4, v4

    float-to-int v2, v2

    invoke-direct {v1, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v0, Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->pointerColor:I

    const/16 v4, 0x50

    invoke-direct {v0, v1, v4, v2}, Lcom/amazon/startactions/jit/BlockingTutorialPointerView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->bottomPointerView:Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    .line 185
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->pointerSize:F

    mul-float v3, v3, v2

    float-to-int v3, v3

    float-to-int v2, v2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_1

    .line 189
    iget p3, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->gravity:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 190
    sget p3, Lcom/amazon/kindle/ea/R$layout;->blocking_tutorial_popup_landscape_left:I

    goto :goto_0

    .line 192
    :cond_0
    sget p3, Lcom/amazon/kindle/ea/R$layout;->blocking_tutorial_popup_landscape_right:I

    goto :goto_0

    .line 195
    :cond_1
    sget p3, Lcom/amazon/kindle/ea/R$layout;->blocking_tutorial_popup_portrait:I

    :goto_0
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/startactions/jit/BlockingTutorialLayout;

    iput-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->view:Lcom/amazon/startactions/jit/BlockingTutorialLayout;

    .line 198
    invoke-virtual {p1, p0}, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->setBlockingTutorialFragment(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    .line 199
    iget-boolean p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->dismissible:Z

    if-eqz p1, :cond_2

    .line 200
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->view:Lcom/amazon/startactions/jit/BlockingTutorialLayout;

    new-instance p2, Lcom/amazon/startactions/jit/BlockingTutorialFragment$2;

    invoke-direct {p2, p0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment$2;-><init>(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    :cond_2
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->view:Lcom/amazon/startactions/jit/BlockingTutorialLayout;

    sget p2, Lcom/amazon/kindle/ea/R$id;->tutorial_bubble:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 213
    iget-object p2, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->topPointerView:Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    iget-object p2, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->contentView:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 215
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 217
    check-cast p2, Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->contentView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    :cond_3
    iget-object p2, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->contentView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    :cond_4
    iget-object p2, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->bottomPointerView:Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 225
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_5
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->view:Lcom/amazon/startactions/jit/BlockingTutorialLayout;

    return-object p1
.end method


# virtual methods
.method public getBottomPointerView()Lcom/amazon/startactions/jit/BlockingTutorialPointerView;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->bottomPointerView:Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getHolderView()Landroid/view/ViewParent;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->holderView:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->targetView:Landroid/view/View;

    return-object v0
.end method

.method public getTopPointerView()Lcom/amazon/startactions/jit/BlockingTutorialPointerView;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->topPointerView:Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    return-object v0
.end method

.method public getTutorialHeight()I
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->view:Lcom/amazon/startactions/jit/BlockingTutorialLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    int-to-float v0, v1

    .line 247
    iget v1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->pointerSize:F

    add-float/2addr v0, v1

    float-to-int v1, v0

    :cond_1
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 232
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 233
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 234
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getBubbleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 236
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-super {p0, v0}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "restored"

    .line 291
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->restored:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 142
    iget-boolean p3, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->restored:Z

    if-eqz p3, :cond_0

    .line 144
    sget-object p1, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->fragmentsToBeDismissed:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    .line 148
    :cond_0
    sget-object p3, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->fragmentsToBeDismissed:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    .line 149
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 151
    :cond_1
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    sput-object p3, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->fragmentsToBeDismissed:Ljava/util/List;

    .line 155
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    new-instance v0, Lcom/amazon/startactions/jit/BlockingTutorialFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment$1;-><init>(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 168
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 169
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getBubbleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->view:Lcom/amazon/startactions/jit/BlockingTutorialLayout;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->dismissAndRestore()V

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->view:Lcom/amazon/startactions/jit/BlockingTutorialLayout;

    .line 258
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 174
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 176
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->jitDialogDismissListener:Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;

    if-eqz p1, :cond_0

    .line 177
    invoke-interface {p1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 281
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "restored"

    const/4 v1, 0x1

    .line 282
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 297
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 298
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 304
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public requestLayout(Landroid/view/View;)V
    .locals 4

    .line 263
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    .line 264
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isMrprDialogBeingShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getTutorialHeight()I

    move-result v0

    if-eqz p1, :cond_1

    .line 271
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 271
    invoke-virtual {p1, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->view:Lcom/amazon/startactions/jit/BlockingTutorialLayout;

    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setBackButtonListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->backButtonListener:Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;

    return-void
.end method

.method public setJitDialogDismissListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->jitDialogDismissListener:Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;

    return-void
.end method

.method public setOnDismissListener(Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->onDismissListener:Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;

    return-void
.end method
