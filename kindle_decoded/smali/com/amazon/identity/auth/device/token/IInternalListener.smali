.class public interface abstract Lcom/amazon/identity/auth/device/token/IInternalListener;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/token/IInternalListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract finish(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
