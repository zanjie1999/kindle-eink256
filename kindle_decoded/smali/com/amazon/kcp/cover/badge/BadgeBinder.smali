.class public Lcom/amazon/kcp/cover/badge/BadgeBinder;
.super Ljava/lang/Object;
.source "BadgeBinder.java"


# instance fields
.field private badges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Lcom/amazon/kcp/cover/badge/Badge;",
            ">;"
        }
    .end annotation
.end field

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private textViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Lcom/amazon/kcp/cover/badge/Badge;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeBinder;->badges:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/BadgeBinder;->imageViews:Ljava/util/Map;

    .line 28
    iput-object p2, p0, Lcom/amazon/kcp/cover/badge/BadgeBinder;->textViews:Ljava/util/Map;

    .line 29
    iput-object p3, p0, Lcom/amazon/kcp/cover/badge/BadgeBinder;->badges:Ljava/util/Map;

    return-void
.end method

.method private hideView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    instance-of v0, p1, Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method private shouldSkipBadge(Lcom/amazon/kcp/cover/badge/BadgePosition;)Z
    .locals 1

    .line 87
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_CORNER:Lcom/amazon/kcp/cover/badge/BadgePosition;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT_SASH:Lcom/amazon/kcp/cover/badge/BadgePosition;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/badge/BadgeBinder;->badges:Ljava/util/Map;

    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgePosition;->TOP_RIGHT:Lcom/amazon/kcp/cover/badge/BadgePosition;

    .line 88
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showView(Landroid/view/View;Ljava/util/Map;Lcom/amazon/kcp/cover/badge/BadgePosition;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 100
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 102
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public bind()V
    .locals 8

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeBinder;->badges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/cover/badge/Badge;

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/cover/badge/BadgePosition;

    .line 36
    iget-object v3, p0, Lcom/amazon/kcp/cover/badge/BadgeBinder;->imageViews:Ljava/util/Map;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 37
    :goto_1
    iget-object v5, p0, Lcom/amazon/kcp/cover/badge/BadgeBinder;->textViews:Ljava/util/Map;

    if-nez v5, :cond_1

    move-object v5, v4

    goto :goto_2

    :cond_1
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    :goto_2
    if-eqz v2, :cond_8

    .line 39
    invoke-direct {p0, v1}, Lcom/amazon/kcp/cover/badge/BadgeBinder;->shouldSkipBadge(Lcom/amazon/kcp/cover/badge/BadgePosition;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_6

    .line 47
    :cond_2
    sget-object v6, Lcom/amazon/kcp/cover/badge/BadgeBinder$1;->$SwitchMap$com$amazon$kcp$cover$badge$Badge$ViewType:[I

    invoke-virtual {v2}, Lcom/amazon/kcp/cover/badge/Badge;->getViewType()Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 50
    iget-object v6, p0, Lcom/amazon/kcp/cover/badge/BadgeBinder;->imageViews:Ljava/util/Map;

    invoke-direct {p0, v3, v6, v1}, Lcom/amazon/kcp/cover/badge/BadgeBinder;->showView(Landroid/view/View;Ljava/util/Map;Lcom/amazon/kcp/cover/badge/BadgePosition;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 51
    invoke-virtual {v2}, Lcom/amazon/kcp/cover/badge/Badge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {v2}, Lcom/amazon/kcp/cover/badge/Badge;->getContentDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v2}, Lcom/amazon/kcp/cover/badge/Badge;->getPadding()I

    move-result v6

    if-ltz v6, :cond_3

    .line 55
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 57
    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/amazon/kcp/cover/badge/BadgeBinder;->scaleSashBadge(Lcom/amazon/kcp/cover/badge/BadgePosition;Landroid/widget/ImageView;)V

    .line 59
    invoke-direct {p0, v5}, Lcom/amazon/kcp/cover/badge/BadgeBinder;->hideView(Landroid/view/View;)V

    goto :goto_5

    .line 62
    :cond_4
    iget-object v6, p0, Lcom/amazon/kcp/cover/badge/BadgeBinder;->textViews:Ljava/util/Map;

    invoke-direct {p0, v5, v6, v1}, Lcom/amazon/kcp/cover/badge/BadgeBinder;->showView(Landroid/view/View;Ljava/util/Map;Lcom/amazon/kcp/cover/badge/BadgePosition;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    invoke-virtual {v2}, Lcom/amazon/kcp/cover/badge/Badge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {v2}, Lcom/amazon/kcp/cover/badge/Badge;->getBadgeLabel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Group Detail"

    invoke-static {v5, v6}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 66
    :cond_5
    invoke-virtual {v2}, Lcom/amazon/kcp/cover/badge/Badge;->getContentDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 65
    :cond_6
    :goto_3
    invoke-virtual {v2}, Lcom/amazon/kcp/cover/badge/Badge;->getContentDescription()Ljava/lang/String;

    move-result-object v5

    .line 64
    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0, v3}, Lcom/amazon/kcp/cover/badge/BadgeBinder;->hideView(Landroid/view/View;)V

    move-object v3, v1

    :goto_5
    const/4 v1, 0x0

    .line 71
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-virtual {v2}, Lcom/amazon/kcp/cover/badge/Badge;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v5

    if-eqz v5, :cond_7

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    .line 76
    invoke-virtual {v2}, Lcom/amazon/kcp/cover/badge/Badge;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 78
    :cond_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_0

    .line 41
    :cond_8
    :goto_6
    invoke-direct {p0, v3}, Lcom/amazon/kcp/cover/badge/BadgeBinder;->hideView(Landroid/view/View;)V

    .line 42
    invoke-direct {p0, v5}, Lcom/amazon/kcp/cover/badge/BadgeBinder;->hideView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method protected scaleSashBadge(Lcom/amazon/kcp/cover/badge/BadgePosition;Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method
