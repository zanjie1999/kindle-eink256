.class public abstract Lcom/amazon/ksdk/presets/ContextObserver;
.super Ljava/lang/Object;
.source "ContextObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBookContextChanged(Lcom/amazon/ksdk/presets/BookContext;)V
.end method

.method public abstract onDeviceContextChanged(Lcom/amazon/ksdk/presets/DeviceContext;)V
.end method

.method public abstract onRemoveUserData()V
.end method

.method public abstract onUserContextChanged(Lcom/amazon/ksdk/presets/UserContext;)V
.end method

.method public abstract onViewContextChanged(Lcom/amazon/ksdk/presets/ViewContext;)V
.end method

.method public abstract onWeblabContextChanged(Lcom/amazon/ksdk/presets/WeblabContext;)V
.end method
