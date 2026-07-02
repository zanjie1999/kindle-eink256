.class Lcom/amazon/android/docviewer/mobi/ReplicaView$5;
.super Ljava/lang/Object;
.source "ReplicaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/ReplicaView;->updateToQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;ZLcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

.field final synthetic val$observer:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

.field final synthetic val$quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/ReplicaView;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$5;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$5;->val$quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$5;->val$observer:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 989
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$5;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->access$400(Lcom/amazon/android/docviewer/mobi/ReplicaView;)Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$5;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$5;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$5;->val$quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$5;->val$observer:Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->updateImage(IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->access$302(Lcom/amazon/android/docviewer/mobi/ReplicaView;Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    return-void
.end method
