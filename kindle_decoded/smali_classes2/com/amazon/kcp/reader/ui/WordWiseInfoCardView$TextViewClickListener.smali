.class Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$TextViewClickListener;
.super Ljava/lang/Object;
.source "WordWiseInfoCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

.field private viewEnum:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$TextViewClickListener;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$TextViewClickListener;->viewEnum:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$1;)V
    .locals 0

    .line 500
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$TextViewClickListener;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 509
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$TextViewClickListener;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;)Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$TextViewClickListener;->viewEnum:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->onClick(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    return-void
.end method
