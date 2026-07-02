.class Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$6;
.super Ljava/lang/Object;
.source "WordWiseInfoCardController.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/IWordWiseClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->getHandlerMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$6;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V
    .locals 0

    .line 870
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$6;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handleClickOnFTUEMultipleChoices(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;)V

    return-void
.end method
