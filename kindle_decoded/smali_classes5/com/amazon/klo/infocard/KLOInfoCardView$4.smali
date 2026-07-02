.class Lcom/amazon/klo/infocard/KLOInfoCardView$4;
.super Ljava/lang/Object;
.source "KLOInfoCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/infocard/KLOInfoCardView;->setQuery(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;


# direct methods
.method constructor <init>(Lcom/amazon/klo/infocard/KLOInfoCardView;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$4;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$4;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-static {v0}, Lcom/amazon/klo/infocard/KLOInfoCardView;->access$400(Lcom/amazon/klo/infocard/KLOInfoCardView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/klo/infocard/KLOInfoCardView$4;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardView;

    invoke-static {v1}, Lcom/amazon/klo/infocard/KLOInfoCardView;->access$300(Lcom/amazon/klo/infocard/KLOInfoCardView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
