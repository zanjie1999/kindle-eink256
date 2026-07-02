.class public abstract Lcom/amazon/ksdk/framework/Updater;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/framework/Updater$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static update()Z
    .locals 1

    .line 26
    invoke-static {}, Lcom/amazon/ksdk/framework/Updater$CppProxy;->update()Z

    move-result v0

    return v0
.end method
