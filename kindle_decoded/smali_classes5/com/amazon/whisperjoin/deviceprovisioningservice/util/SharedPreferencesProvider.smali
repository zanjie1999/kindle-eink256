.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;
.super Ljava/lang/Object;
.source "SharedPreferencesProvider.java"


# static fields
.field private static final FFS_PROVISIONING:Ljava/lang/String; = "FFSProvisioningConfiguration"

.field private static final PREF_PREFIX:Ljava/lang/String; = "com.amazon.whisperjoin.deviceprovisioningservice.preferences."

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesProvider"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 29
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->mContext:Landroid/content/Context;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    if-eqz p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.preferences."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "providing shared preferences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "preferenceName can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFFSConfigurationPreferences()Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "FFSProvisioningConfiguration"

    .line 42
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;->get(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
