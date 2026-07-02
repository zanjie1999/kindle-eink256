.class Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$4;
.super Ljava/lang/Object;
.source "StandaloneFontOptionData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->onDownloadOnDemandFontEvent(Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$4;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$4;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$600(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;)V

    return-void
.end method
