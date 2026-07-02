.class public interface abstract Lcom/amazon/whispersync/dcp/framework/IPackageDeleteObserver;
.super Ljava/lang/Object;
.source "IPackageDeleteObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/IPackageDeleteObserver$Stub;
    }
.end annotation


# static fields
.field public static final TRANSACTION_PACKAGEDELETED:I = 0x1


# virtual methods
.method public abstract packageDeleted(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
