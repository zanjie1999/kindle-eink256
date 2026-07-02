.class public final Lcom/amazon/kcp/application/ReddingApplication_MembersInjector;
.super Ljava/lang/Object;
.source "ReddingApplication_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/amazon/kcp/application/ReddingApplication;",
        ">;"
    }
.end annotation


# instance fields
.field private final dispatchingActivityInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static injectDispatchingActivityInjector(Lcom/amazon/kcp/application/ReddingApplication;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/ReddingApplication;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingApplication;->dispatchingActivityInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method
