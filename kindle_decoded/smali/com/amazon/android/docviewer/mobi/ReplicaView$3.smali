.class Lcom/amazon/android/docviewer/mobi/ReplicaView$3;
.super Ljava/lang/Object;
.source "ReplicaView.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/ReplicaView;->onLayoutChanged()V
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

    .line 881
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$3;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 1

    .line 884
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$3;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->access$100(Lcom/amazon/android/docviewer/mobi/ReplicaView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 885
    :try_start_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$3;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->access$202(Lcom/amazon/android/docviewer/mobi/ReplicaView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 886
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$3;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void

    :catchall_0
    move-exception p2

    .line 886
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
