.class public Lcom/amazon/whispersync/dcp/framework/SharedPreferencesFactory;
.super Ljava/lang/Object;
.source "SharedPreferencesFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/SharedPreferencesFactory;->create(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SharedPreferencesFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method
