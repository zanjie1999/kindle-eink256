.class final Lcom/amazon/kcp/home/widget/ChartsWidget$bindBookViews$2$1$1;
.super Ljava/lang/Object;
.source "ChartsWidget.kt"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/ChartsWidget;->bindBookViews(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/amazon/kcp/home/ui/RatingBarButton;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget$bindBookViews$2$1$1;->$this_apply:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ChartsWidget$bindBookViews$2$1$1;->$this_apply:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
