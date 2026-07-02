.class public abstract Lcom/amazon/whispersync/dcp/framework/IDataMigrator$Stub;
.super Landroid/os/Binder;
.source "IDataMigrator.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/IDataMigrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/IDataMigrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/IDataMigrator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.IDataMigrator"

.field static final TRANSACTION_deleteMigratedDatabase:I = 0x4

.field static final TRANSACTION_deleteMigratedSharedPrefs:I = 0x2

.field static final TRANSACTION_migrateDatabase:I = 0x3

.field static final TRANSACTION_migrateSharedPrefs:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whispersync.dcp.framework.IDataMigrator"

    .line 19
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/framework/IDataMigrator;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.dcp.framework.IDataMigrator"

    .line 30
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    instance-of v1, v0, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/IDataMigrator$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.amazon.whispersync.dcp.framework.IDataMigrator"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 46
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 92
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-interface {p0, p1}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;->deleteMigratedDatabase(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 76
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-interface {p0, p1}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;->migrateDatabase(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 67
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-interface {p0, p1}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;->deleteMigratedSharedPrefs(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 51
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-interface {p0, p1}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;->migrateSharedPrefs(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 57
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 61
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2
.end method
