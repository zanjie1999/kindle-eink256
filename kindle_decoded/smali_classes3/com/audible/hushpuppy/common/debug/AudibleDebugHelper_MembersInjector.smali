.class public final Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper_MembersInjector;
.super Ljava/lang/Object;
.source "AudibleDebugHelper_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final hushpuppyModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectHushpuppyModel(Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-void
.end method
