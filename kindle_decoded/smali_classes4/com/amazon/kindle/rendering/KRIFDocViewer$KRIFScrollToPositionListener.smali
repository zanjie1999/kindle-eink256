.class Lcom/amazon/kindle/rendering/KRIFDocViewer$KRIFScrollToPositionListener;
.super Ljava/lang/Object;
.source "KRIFDocViewer.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IScrollToPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KRIFScrollToPositionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 3579
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$KRIFScrollToPositionListener;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/rendering/KRIFDocViewer$1;)V
    .locals 0

    .line 3579
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer$KRIFScrollToPositionListener;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    return-void
.end method


# virtual methods
.method public willScrollTo(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 3582
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$KRIFScrollToPositionListener;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$1200(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method
