.class Lcom/amazon/klo/infocard/KLOInfoCardView$5;
.super Ljava/lang/Object;
.source "KLOInfoCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/infocard/KLOInfoCardView;->setSource(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/klo/infocard/KLOInfoCardView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$5;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    iput-object p2, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$5;->val$source:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$5;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$5;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-static {v0}, Lcom/amazon/klo/infocard/KLOInfoCardView;->access$500(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$5;->val$source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$5;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-static {v0}, Lcom/amazon/klo/infocard/KLOInfoCardView;->access$500(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/amazon/klo/infocard/KLOInfoCardView$5$1;

    invoke-direct {v1, p0}, Lcom/amazon/klo/infocard/KLOInfoCardView$5$1;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardView$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
