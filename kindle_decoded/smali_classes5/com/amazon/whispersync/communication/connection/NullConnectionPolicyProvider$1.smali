.class Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider$1;
.super Ljava/lang/Object;
.source "NullConnectionPolicyProvider.java"

# interfaces
.implements Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;->getConnectionPolicyBuilder()Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider$1;->this$0:Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lamazon/whispersync/communication/connection/ConnectionPolicy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCompressionOption(Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-object p0
.end method

.method public setIsAnonymousCredentialsAllowed(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-object p0
.end method

.method public setIsClearText(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-object p0
.end method

.method public setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-object p0
.end method

.method public setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-object p0
.end method

.method public setIsRoamingAllowed(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-object p0
.end method

.method public setIsShortLived(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-object p0
.end method

.method public setIsWiFiNecessary(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-object p0
.end method

.method public setPriority(Lamazon/whispersync/communication/Priority;)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-object p0
.end method

.method public setPriority(Lamazon/whispersync/communication/connection/Priority;)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    return-object p0
.end method
