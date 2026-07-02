.class Lcom/amazon/krf/platform/KRFViewAdapterFragment$1;
.super Ljava/lang/Object;
.source "KRFViewAdapterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRFViewAdapterFragment;->setOrientationLockRequestListener(Lcom/amazon/krf/platform/OrientationLockRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRFViewAdapterFragment;

.field final synthetic val$listenerToAdd:Lcom/amazon/krf/platform/OrientationLockRequestListener;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRFViewAdapterFragment;Lcom/amazon/krf/platform/OrientationLockRequestListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment$1;->this$0:Lcom/amazon/krf/platform/KRFViewAdapterFragment;

    iput-object p2, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment$1;->val$listenerToAdd:Lcom/amazon/krf/platform/OrientationLockRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment$1;->this$0:Lcom/amazon/krf/platform/KRFViewAdapterFragment;

    iget-object v1, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment$1;->val$listenerToAdd:Lcom/amazon/krf/platform/OrientationLockRequestListener;

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->setOrientationLockRequestListener(Lcom/amazon/krf/platform/OrientationLockRequestListener;)V

    return-void
.end method
