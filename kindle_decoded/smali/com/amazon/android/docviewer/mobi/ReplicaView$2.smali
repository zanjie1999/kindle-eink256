.class Lcom/amazon/android/docviewer/mobi/ReplicaView$2;
.super Ljava/lang/Object;
.source "ReplicaView.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/ReplicaView;->setZoom(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/ReplicaView;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$2;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 0

    .line 243
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$2;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
