.class Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;
.super Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;
.source "ReplicaBevDecoratorProvider.java"


# instance fields
.field private enterBevButton:Landroid/widget/ImageButton;

.field private periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    return-object p0
.end method


# virtual methods
.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 0

    .line 101
    sget-object p3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    if-ne p1, p3, :cond_3

    .line 104
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eq p1, p2, :cond_2

    .line 105
    :cond_0
    new-instance p1, Landroid/widget/ImageButton;

    invoke-direct {p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    .line 106
    new-instance p3, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator$1;

    invoke-direct {p3, p0}, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator$1;-><init>(Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p4}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_birdseye_dark:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_birdseye:I

    .line 114
    :goto_0
    sget p3, Lcom/amazon/kindle/newsstand/core/R$attr;->selectableItemBackgroundBorderless:I

    invoke-static {p2, p3}, Lcom/amazon/android/util/UIUtils;->getDrawableForThemeAttribute(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 116
    iget-object p3, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReplicaBevDecorator;->enterBevButton:Landroid/widget/ImageButton;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
