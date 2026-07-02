.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;
.super Ljava/lang/Object;
.source "SharedPreferencesModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideSharedPreferencesProvider(Landroid/content/Context;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;
    .locals 1

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/SharedPreferencesProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
