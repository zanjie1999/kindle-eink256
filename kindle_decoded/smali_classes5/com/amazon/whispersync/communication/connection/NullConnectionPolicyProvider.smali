.class public final Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;
.super Ljava/lang/Object;
.source "NullConnectionPolicyProvider.java"


# static fields
.field public static final INSTANCE:Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;->INSTANCE:Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionPolicy()Lamazon/whispersync/communication/connection/ConnectionPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/ConnectionPolicyException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionPolicyBuilder()Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1

    .line 47
    new-instance v0, Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider$1;-><init>(Lcom/amazon/whispersync/communication/connection/NullConnectionPolicyProvider;)V

    return-object v0
.end method
