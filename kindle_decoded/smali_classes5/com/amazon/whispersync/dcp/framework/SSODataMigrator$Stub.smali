.class public abstract Lcom/amazon/whispersync/dcp/framework/SSODataMigrator$Stub;
.super Landroid/os/Binder;
.source "SSODataMigrator.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/SSODataMigrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/SSODataMigrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/SSODataMigrator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.SSODataMigrator"

.field static final TRANSACTION_confirmDataMigrated:I = 0x3

.field static final TRANSACTION_getAnonymousCredentialsStore:I = 0x2

.field static final TRANSACTION_getDcpProtectionStore:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whispersync.dcp.framework.SSODataMigrator"

    .line 18
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/framework/SSODataMigrator;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.dcp.framework.SSODataMigrator"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/amazon/whispersync/dcp/framework/SSODataMigrator;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/amazon/whispersync/dcp/framework/SSODataMigrator;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SSODataMigrator$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/SSODataMigrator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "com.amazon.whispersync.dcp.framework.SSODataMigrator"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 45
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 78
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-interface {p0}, Lcom/amazon/whispersync/dcp/framework/SSODataMigrator;->confirmDataMigrated()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 64
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-interface {p0}, Lcom/amazon/whispersync/dcp/framework/SSODataMigrator;->getAnonymousCredentialsStore()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 50
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-interface {p0}, Lcom/amazon/whispersync/dcp/framework/SSODataMigrator;->getDcpProtectionStore()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2
.end method
