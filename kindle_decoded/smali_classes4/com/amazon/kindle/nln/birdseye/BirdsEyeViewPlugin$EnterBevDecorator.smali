.class public Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;
.super Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;
.source "BirdsEyeViewPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnterBevDecorator"
.end annotation


# instance fields
.field private enterBevButton:Landroid/widget/ImageButton;

.field private isButtonActive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;-><init>()V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->isButtonActive:Z

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;)Z
    .locals 0

    .line 310
    iget-boolean p0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->isButtonActive:Z

    return p0
.end method


# virtual methods
.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 0

    .line 322
    sget-object p3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    if-ne p1, p3, :cond_3

    .line 325
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eq p1, p2, :cond_2

    :cond_0
    const/4 p1, 0x1

    .line 326
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->isButtonActive:Z

    .line 327
    new-instance p1, Landroid/widget/ImageButton;

    invoke-direct {p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    .line 328
    new-instance p3, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$1;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$1;-><init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-virtual {p4}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 346
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_birdseye_dark:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_birdseye:I

    .line 347
    :goto_0
    sget p3, Lcom/amazon/kindle/krl/R$attr;->selectableItemBackgroundBorderless:I

    invoke-static {p2, p3}, Lcom/amazon/android/util/UIUtils;->getDrawableForThemeAttribute(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 349
    iget-object p3, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 350
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 353
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$2;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$2;-><init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 365
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public onThumbnailPlaceholderVisibilityEvent(Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 317
    iget-boolean p1, p1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ThumbnailPlaceholderVisibilityEvent;->areShown:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->isButtonActive:Z

    return-void
.end method
