.class Lcom/amazon/kcp/reader/ui/InfoCardContainer$2;
.super Ljava/lang/Object;
.source "InfoCardContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/InfoCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$2;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    iget-boolean p2, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPartiallyHidden:Z

    if-eqz p2, :cond_0

    .line 144
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->access$000(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
