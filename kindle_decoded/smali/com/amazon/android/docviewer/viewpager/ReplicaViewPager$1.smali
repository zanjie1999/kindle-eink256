.class Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$1;
.super Ljava/lang/Object;
.source "ReplicaViewPager.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$1;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$1;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$1;->this$0:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->setOrientation(I)V

    :cond_0
    return-void
.end method
