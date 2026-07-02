.class public final Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_MembersInjector;
.super Ljava/lang/Object;
.source "StartActionsWidget_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;",
        ">;"
    }
.end annotation


# instance fields
.field private final audibleDebugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectAudibleDebugHelper(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method
