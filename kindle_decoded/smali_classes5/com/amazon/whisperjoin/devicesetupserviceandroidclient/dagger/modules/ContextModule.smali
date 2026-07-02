.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;
.super Ljava/lang/Object;
.source "ContextModule.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {p1}, Lcom/jakewharton/threetenabp/AndroidThreeTen;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public providesContext()Landroid/content/Context;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;->mContext:Landroid/content/Context;

    return-object v0
.end method
