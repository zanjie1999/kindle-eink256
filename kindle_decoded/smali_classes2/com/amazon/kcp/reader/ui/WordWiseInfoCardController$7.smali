.class Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$7;
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

    .line 874
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$7;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController$7;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->handleClickOnMultipleChoices(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    return-void
.end method
