.class Lcom/amazon/kindle/rendering/KRIFDocViewer$4;
.super Ljava/lang/Object;
.source "KRIFDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPageLabelProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 1263
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$4;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1266
    new-instance v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PageLabelReadyEvent;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$4;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PageLabelReadyEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 1267
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$4;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$700(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
