.class Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter$2;
.super Ljava/lang/Object;
.source "ReplicaViewAdapter.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->updateAllPageItemQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$replicaPage:Lcom/amazon/nwstd/replica/IReplicaPage;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;Lcom/amazon/nwstd/replica/IReplicaPage;)V
    .locals 0

    .line 560
    iput-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter$2;->val$replicaPage:Lcom/amazon/nwstd/replica/IReplicaPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 0

    .line 564
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter$2;->val$replicaPage:Lcom/amazon/nwstd/replica/IReplicaPage;

    invoke-interface {p1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
