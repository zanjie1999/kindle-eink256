.class public abstract Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider$Stub;
.super Landroid/os/Binder;
.source "IDCPComponentInformationProvider.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.IDCPComponentInformationProvider"

.field static final TRANSACTION_getComponentVersion:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whispersync.dcp.framework.IDCPComponentInformationProvider"

    .line 20
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.dcp.framework.IDCPComponentInformationProvider"

    .line 31
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    instance-of v1, v0, Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider;

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.amazon.whispersync.dcp.framework.IDCPComponentInformationProvider"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 47
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 52
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider;->getComponentVersion()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
