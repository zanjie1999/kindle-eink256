.class public abstract Lcom/amazon/ksdk/profiles/NetworkConnectivityManager;
.super Ljava/lang/Object;
.source "NetworkConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/profiles/NetworkConnectivityManager$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getNetworkType()Lcom/amazon/ksdk/profiles/NetworkType;
.end method

.method public abstract isConnected()Z
.end method
