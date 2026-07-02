.class public interface abstract Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver;
.super Ljava/lang/Object;
.source "IPackageDataObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/IPackageDataObserver$Stub;
    }
.end annotation


# static fields
.field public static final TRANSACTION_ONREMOVECOMPLETED:I = 0x1


# virtual methods
.method public abstract onRemoveCompleted(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
