.class public abstract Lcom/amazon/ksdk/weblabmanager/WeblabManager;
.super Ljava/lang/Object;
.source "WeblabManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/weblabmanager/WeblabManager$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/amazon/ksdk/weblabmanager/WeblabManager;
    .locals 1

    .line 20
    invoke-static {}, Lcom/amazon/ksdk/weblabmanager/WeblabManager$CppProxy;->instance()Lcom/amazon/ksdk/weblabmanager/WeblabManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract setWeblabCallback(Lcom/amazon/ksdk/weblabmanager/WeblabCallback;)V
.end method
