.class public final Lcom/audible/hushpuppy/plugin/DebugPlugin_MembersInjector;
.super Ljava/lang/Object;
.source "DebugPlugin_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/plugin/DebugPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final debugDbDumpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/DebugDbDumpController;",
            ">;"
        }
    .end annotation
.end field

.field private final debugModelDumpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/DebugModelDumpController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectDebugDbDumpController(Lcom/audible/hushpuppy/plugin/DebugPlugin;Lcom/audible/hushpuppy/controller/DebugDbDumpController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->debugDbDumpController:Lcom/audible/hushpuppy/controller/DebugDbDumpController;

    return-void
.end method

.method public static injectDebugModelDumpController(Lcom/audible/hushpuppy/plugin/DebugPlugin;Lcom/audible/hushpuppy/controller/DebugModelDumpController;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->debugModelDumpController:Lcom/audible/hushpuppy/controller/DebugModelDumpController;

    return-void
.end method
