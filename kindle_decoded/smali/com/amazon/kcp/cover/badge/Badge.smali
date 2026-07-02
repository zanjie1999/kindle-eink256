.class public Lcom/amazon/kcp/cover/badge/Badge;
.super Ljava/lang/Object;
.source "Badge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/badge/Badge$ViewType;
    }
.end annotation


# instance fields
.field private badgeLabel:Ljava/lang/String;

.field private contentDescription:Ljava/lang/String;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private padding:I

.field private viewType:Lcom/amazon/kcp/cover/badge/Badge$ViewType;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/amazon/kcp/cover/badge/Badge;->padding:I

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/Badge;->drawable:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object p2, p0, Lcom/amazon/kcp/cover/badge/Badge;->onClickListener:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p3, p0, Lcom/amazon/kcp/cover/badge/Badge;->contentDescription:Ljava/lang/String;

    .line 31
    sget-object p1, Lcom/amazon/kcp/cover/badge/Badge$ViewType;->IMAGE:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/Badge;->viewType:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    .line 32
    iput p5, p0, Lcom/amazon/kcp/cover/badge/Badge;->padding:I

    .line 33
    iput-object p4, p0, Lcom/amazon/kcp/cover/badge/Badge;->badgeLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBadgeLabel()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/Badge;->badgeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/Badge;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/Badge;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/Badge;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/amazon/kcp/cover/badge/Badge;->padding:I

    return v0
.end method

.method public getViewType()Lcom/amazon/kcp/cover/badge/Badge$ViewType;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/Badge;->viewType:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    return-object v0
.end method

.method public setViewType(Lcom/amazon/kcp/cover/badge/Badge$ViewType;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/Badge;->viewType:Lcom/amazon/kcp/cover/badge/Badge$ViewType;

    return-void
.end method
