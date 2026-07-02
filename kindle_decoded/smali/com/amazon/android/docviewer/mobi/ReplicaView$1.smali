.class Lcom/amazon/android/docviewer/mobi/ReplicaView$1;
.super Ljava/lang/Object;
.source "ReplicaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/ReplicaView;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/model/replica/ReplicaModel;I)V
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

    .line 173
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$1;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$1;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->access$000(Lcom/amazon/android/docviewer/mobi/ReplicaView;)Lcom/amazon/nwstd/replica/INewPageReachedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView$1;->this$0:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->access$000(Lcom/amazon/android/docviewer/mobi/ReplicaView;)Lcom/amazon/nwstd/replica/INewPageReachedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/replica/INewPageReachedListener;->onNewPageReached()V

    :cond_0
    return-void
.end method
