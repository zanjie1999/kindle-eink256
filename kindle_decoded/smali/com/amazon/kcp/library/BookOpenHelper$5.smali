.class final Lcom/amazon/kcp/library/BookOpenHelper$5;
.super Ljava/lang/Object;
.source "BookOpenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/BookOpenHelper;->openLocal(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenHelper$5;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 588
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$000()Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$5;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    .line 592
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshSeekBar()V

    .line 593
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshReaderActionButtons()V

    .line 594
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshReaderPanels()V

    return-void
.end method
