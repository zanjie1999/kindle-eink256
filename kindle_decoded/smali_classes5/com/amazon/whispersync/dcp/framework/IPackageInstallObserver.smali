.class public interface abstract Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;
.super Ljava/lang/Object;
.source "IPackageInstallObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver$Stub;
    }
.end annotation


# static fields
.field public static final TRANSACTION_PACKAGEINSTALLED:I = 0x1


# virtual methods
.method public abstract packageInstalled(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
